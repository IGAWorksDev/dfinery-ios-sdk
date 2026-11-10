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
            url: "https://github.com/IGAWorksDev/dfinery-ios-sdk/releases/download/v2.6.1/DfinerySDK.xcframework.zip",
            checksum: "aadf4dcb929fa13e50c134ca74cbb5e40f8ef3215b9211395cae48742348d7c1"
        ),
        .binaryTarget(
            name: "DfinerySDKServiceExtension",
            url: "https://github.com/IGAWorksDev/dfinery-ios-sdk/releases/download/v2.6.1/DfinerySDKServiceExtension.xcframework.zip",
            checksum: "8a1be91daf0dcbb74776db8027ef01e4eadd57c9bb098f22822304640fccc39e"
        )
    ]
)
