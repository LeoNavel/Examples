// swift-tools-version:4.0

import PackageDescription

let package = Package(
    name: "NutViewExample",
    dependencies: [
         .package(url: "https://github.com/Swift-Squirrel/Squirrel.git", from: "0.1.3"),
    ],
    targets: [
        .target(
            name: "NutViewExample",
            dependencies: ["Squirrel"]),
    ]
)
