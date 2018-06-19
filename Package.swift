// swift-tools-version:4.0
import PackageDescription

let package = Package(
    name: "vaportest.genealabs.com",
    dependencies: [
        .package(url: "https://github.com/vapor/vapor.git", from: "3.0.4"),
        .package(url: "https://github.com/vapor/leaf.git", from: "3.0.0-rc.2"),
        .package(url: "https://github.com/vapor/VaporForms.git", .branch("master")),
    ],
    targets: [
        .target(name: "App", dependencies: ["Leaf", "Vapor", "VaporForms"]),
        .target(name: "Run", dependencies: ["App"]),
        .testTarget(name: "AppTests", dependencies: ["App"])
    ]
)

