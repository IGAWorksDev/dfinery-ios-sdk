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
            url: "https://github.com/IGAWorksDev/dfinery-ios-sdk/releases/download/v2.3.6/DfinerySDK.xcframework.zip",
            checksum: "47faefa272f7f41ea260694d7271dd5740bf7b3ca4bd96ed6b6fa9f5640d87d3"
        ),
        .binaryTarget(
            name: "DfinerySDKServiceExtension",
            url: "https://github.com/IGAWorksDev/dfinery-ios-sdk/releases/download/v2.3.6/DfinerySDKServiceExtension.xcframework.zip",
            checksum: "4c4ea4bcafb65dfad53b5eab42f3f6dba3f6355934dd35a827f8bc045ce85913"
        )
    ]
)
