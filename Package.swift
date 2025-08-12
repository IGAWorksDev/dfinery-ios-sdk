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
            url: "https://github.com/IGAWorksDev/dfinery-ios-sdk/releases/download/2.3.0/DfinerySDK.xcframework.zip",
            checksum: "6ee15f6231e12bd18baecec8cb3598ec27b9d39053fd0df6a1199bb37471ea50"
        ),
        .binaryTarget(
            name: "DfinerySDKServiceExtension",
            url: "https://github.com/IGAWorksDev/dfinery-ios-sdk/releases/download/2.3.0/DfinerySDKServiceExtension.xcframework.zip",
            checksum: "b50504385eb9c16b9b408e7e42f56bc73af863d8027adef0b21611bb09a1252c"
        )
    ]
)
