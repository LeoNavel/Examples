import Squirrel
import NutView

let server = Server()

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

server.route(get: "/") { () -> Any in
    let pages = [
        ifStatements,
        forStatements
    ]
    return try View(name: "Index", with: pages)
}

server.route(get: "/Examples/\(ifStatements.id)") { () -> Any in
    let data: [String: Any] = [
        "name": "Tom",
        "age": 22
    ]
    return try View(name: "Examples.\(ifStatements.id)", with: data)
}

server.route(get: "/Examples/\(forStatements.id)") { () -> Any in
    let data: [String: Any] = [
        "names": ["Tom", "Janny", "Millie"],
        "salaries": [
            "Tom": 4800,
            "Janny": 4500,
            "Millie": 5000
        ]

    ]
    return try View(name: "Examples.\(forStatements.id)", with: data)
}


try server.run()
