// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "fns",
    products: [
        .library(
            name: "fns",
            targets: ["fns"]
        ),
        .library(
            name: "fns-foundation",
            targets: ["fns-foundation"]
        )
    ],
    targets: [
        .target(
            name: "fns",
            exclude: [
                "gyb"
            ]
        ),
        .target(
            name: "fns-foundation",
            exclude: [
                "gyb"
            ]
        ),
        .testTarget(
            name: "fns-tests",
            dependencies: ["fns"],
            exclude: [
                "gyb"
            ]
        ),
        .testTarget(
            name: "fns-foundation-tests",
            dependencies: ["fns-foundation"],
            exclude: [
                "gyb"
            ]
        ),
    ]
)
