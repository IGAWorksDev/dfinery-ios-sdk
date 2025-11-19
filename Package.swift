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
            url: "https://github.com/IGAWorksDev/dfinery-ios-sdk/releases/download/v2.3.3/DfinerySDK.xcframework.zip",
            checksum: "7cf4e1a2e97a1d487093927df2c893f3a9705eccbe4bcae8d81c0b58375af0f5"
        ),
        .binaryTarget(
            name: "DfinerySDKServiceExtension",
            url: "https://github.com/IGAWorksDev/dfinery-ios-sdk/releases/download/v2.3.3/DfinerySDKServiceExtension.xcframework.zip",
            checksum: "d66145633f2a02236733dd1d2593be7b5c38f85b161b5b837090e598aa6c0ba2"
        )
    ]
)
