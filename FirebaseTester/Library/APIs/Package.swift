// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "APIs",
    platforms: [
        .iOS(.v16)
    ],
    products: [
        .library(name: "FirebaseApi", targets: ["FirebaseApi"]),
        .library(name: "TelemetryApi", targets: ["TelemetryApi"]),
    ],
    dependencies: [
        .package(url: "https://github.com/firebase/firebase-ios-sdk", from: "10.0.0"),
    ],
    targets: [
        .target(
            name: "FirebaseApi",
            dependencies: [
                .product(name: "FirebaseCrashlytics", package: "firebase-ios-sdk"),
            ],
            path: "FirebaseApi/Sources"
        ),
        .target(
            name: "TelemetryApi",
            dependencies: [
                .product(name: "FirebaseAnalytics", package: "firebase-ios-sdk"),
            ],
            path: "TelemetryApi/Sources"
        ),
    ]
)
