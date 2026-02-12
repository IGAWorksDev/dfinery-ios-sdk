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
            url: "https://github.com/IGAWorksDev/dfinery-ios-sdk/releases/download/v2.4.1/DfinerySDK.xcframework.zip",
            checksum: "bda725c77d93e69a9bacbc5b4f9881d4c29ef6d20305063333c457ad74f8d2d1"
        ),
        .binaryTarget(
            name: "DfinerySDKServiceExtension",
            url: "https://github.com/IGAWorksDev/dfinery-ios-sdk/releases/download/v2.4.1/DfinerySDKServiceExtension.xcframework.zip",
            checksum: "67090f8046b85a679373393daf3f17790d3e76871c25f6718d4dedb779d12097"
        )
    ]
)
