// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "App",
    platforms: [
        .iOS(.v16)
    ],
    products: [
        .library(name: "App", targets: ["App"]),
    ],
    dependencies: [
        .package(path: "../APIs"),
    ],
    targets: [
        .target(
            name: "App",
            dependencies: [
                .product(name: "FirebaseApi", package: "APIs"),
                .product(name: "TelemetryApi", package: "APIs"),
            ],
            path: "App/Sources"
        ),
    ]
)
