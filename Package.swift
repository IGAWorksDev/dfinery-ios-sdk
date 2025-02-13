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
            url: "https://github.com/IGAWorksDev/dfinery-ios-sdk/releases/download/2.1.0/DfinerySDK.xcframework.zip",
            checksum: "97ddf0e2ee96718cde785e1a738c4c66389bddffd6efd99cadd531f211df1e29"
        ),
        .binaryTarget(
            name: "DfinerySDKServiceExtension",
            url: "https://github.com/IGAWorksDev/dfinery-ios-sdk/releases/download/2.1.0/DfinerySDKServiceExtension.xcframework.zip",
            checksum: "2d469c60131e8b3e61c90f69d5d4a2453017e998fb59e66d70bea48e9e489968"
        )
    ]
)
