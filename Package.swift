// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "MarvelDesignSystem",
    platforms: [.iOS(.v13)],
    products: [
        .library(name: "MarvelDesignSystem", targets: ["MarvelDesignSystem"])
    ],
    targets: [
        .target(name: "MarvelDesignSystem"),
        .testTarget(name: "MarvelDesignSystemTests", dependencies: ["MarvelDesignSystem"])
    ]
)
