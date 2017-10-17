import Squirrel
import NutView
import Foundation

NutConfig.nuts = "MyCustomDir/NutFiles"
NutConfig.fruits = "MySecondCustomDir/FruitFiles"

if !NutConfig.fruits.exists {
    try NutConfig.fruits.mkpath()
}

NutConfig.clearFruits()

struct Page {
    let name: String
    let id: String
}

let ifStatements = Page(name: "If statements", id: "IfStatements")
let forStatements = Page(name: "For statements", id: "ForStatements")
let expressions = Page(name: "Expressions", id: "Expressions")
let datesExample = Page(name: "Dates", id: "Dates")

let server = Server()

server.route(get: "/") { () -> Any in
    let pages = [
        expressions,
        datesExample,
        ifStatements,
        forStatements
    ]

    // Thanks to Squirrel we can return view without calling .getContent()
    return try View(name: "Index", with: pages)
}

server.route(get: "/Examples/\(ifStatements.id)") {
    let data: [String: Any] = [
        "name": "Tom",
        "age": 22
    ]
    // Here we store content before we show it to user
    let view = try View(name: "Examples.\(ifStatements.id)", with: data)
    let content = try view.getContent()
    return content
}

server.route(get: "/Examples/\(forStatements.id)") {
    let data: [String: Any] = [
        "names": ["Tom", "Janny", "Millie"],
        "salaries": [
            "Tom": 4800,
            "Janny": 4500,
            "Millie": 5000
        ]
    ]

    let view = try View(name: "Examples.\(forStatements.id)", with: data)
    return try view.getContent()
}

server.route(get: "/Examples/\(expressions.id)") {
    let data: [String: Any] = [
        "seven": 7,
        "name": "Bob",
        "pi": 3.14,
        "h3": "<h3 style=\"color: red\">This is h3</h3>",
        "person": [
            "name": "Bill",
            "surname": "Smith"
        ]
    ]

    let view = try View(name: "Examples.\(expressions.id)", with: data)
    let content = try view.getContent()
    return content
}

server.route(get: "/Examples/\(datesExample.id)") {
    let data: [String: Any] = ["now": Date().timeIntervalSince1970]
    return try View(name: "Examples.\(datesExample.id)", with: data)
}

try server.run()
