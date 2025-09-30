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
            url: "https://github.com/IGAWorksDev/dfinery-ios-sdk/releases/download/2.3.2/DfinerySDK.xcframework.zip",
            checksum: "1d576c1a7ab69f6453c5807f31d1096f3d0a092864d67969229bbc6333f541f3"
        ),
        .binaryTarget(
            name: "DfinerySDKServiceExtension",
            url: "https://github.com/IGAWorksDev/dfinery-ios-sdk/releases/download/2.3.2/DfinerySDKServiceExtension.xcframework.zip",
            checksum: "9696d48b0b09af8f2e35227c38c8bca70c75425f30c549f7692f30b78d0bfee9"
        )
    ]
)
