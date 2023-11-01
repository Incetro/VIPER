// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "VIPER",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "VIPER",
            targets: ["VIPER"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Incetro/transition-handler.git", .branch("main"))
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "VIPER",
            dependencies: [
                .product(name: "TransitionHandler", package: "transition-handler"),
            ]
        ),
        .testTarget(
            name: "VIPERTests",
            dependencies: ["VIPER"]),
    ]
)
