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
            url: "https://github.com/IGAWorksDev/dfinery-ios-sdk/releases/download/v2.3.5/DfinerySDK.xcframework.zip",
            checksum: "e892fd8ee947929def3fe84826e6c1d5693b1fca49534031a5d0fb983ae38714"
        ),
        .binaryTarget(
            name: "DfinerySDKServiceExtension",
            url: "https://github.com/IGAWorksDev/dfinery-ios-sdk/releases/download/v2.3.5/DfinerySDKServiceExtension.xcframework.zip",
            checksum: "1b23ff906a6c4ee7daa6489e48f27e5eacc6b41f8611e8b40075ac9d0a9c1b0f"
        )
    ]
)
