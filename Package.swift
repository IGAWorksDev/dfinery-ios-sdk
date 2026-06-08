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
            url: "https://github.com/IGAWorksDev/dfinery-ios-sdk/releases/download/v2.5.0/DfinerySDK.xcframework.zip",
            checksum: "a325f80147a3f4013d2ef1322bab39045181b143f7601948b9e94b01c637add8"
        ),
        .binaryTarget(
            name: "DfinerySDKServiceExtension",
            url: "https://github.com/IGAWorksDev/dfinery-ios-sdk/releases/download/v2.5.0/DfinerySDKServiceExtension.xcframework.zip",
            checksum: "c8b0c13d5262dc92e1dd494d486c92c4ec39914229e0444286158e74dc48e014"
        )
    ]
)
