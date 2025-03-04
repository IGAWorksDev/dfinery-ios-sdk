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
            url: "https://github.com/IGAWorksDev/dfinery-ios-sdk/releases/download/2.1.1/DfinerySDK.xcframework.zip",
            checksum: "f8e416efdeb8cf71819fd3719af6c8d07fa7083c8c30b1fa324ca0bd42c41fac"
        ),
        .binaryTarget(
            name: "DfinerySDKServiceExtension",
            url: "https://github.com/IGAWorksDev/dfinery-ios-sdk/releases/download/2.1.1/DfinerySDKServiceExtension.xcframework.zip",
            checksum: "58a045587492502981cb9e4fdfdc0b8e1faeed9f4298eb9a72228845b332b8fd"
        )
    ]
)
