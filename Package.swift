// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "DfinerySDK",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "DfinerySDK",
            targets: ["DfinerySDK"]),
        .library(
            name: "DfinerySDKServiceExtension",
            targets: ["DfinerySDKServiceExtension"])
    ],
    targets: [
        .binaryTarget(
            name: "DfinerySDK",
            url: "https://github.com/IGAWorksDev/dfinery-ios-sdk/releases/download/v2.6.0/DfinerySDK.xcframework.zip",
            checksum: "83c7532e8bb692b257eb5146b6bac298c264bbcdb7e14e3d6d086281908d067c"
        ),
        .binaryTarget(
            name: "DfinerySDKServiceExtension",
            url: "https://github.com/IGAWorksDev/dfinery-ios-sdk/releases/download/v2.6.0/DfinerySDKServiceExtension.xcframework.zip",
            checksum: "93124788da2a59a9bc5f2d043dc78f4aa4e9ff58a5b548be1bc4d740c4fbc79e"
        )
    ]
)
