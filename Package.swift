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
            url: "https://github.com/IGAWorksDev/dfinery-ios-sdk/releases/download/1.1.0/DfinerySDK.xcframework.zip",
            checksum: "faf1dd36a01e17c3ae4de77de80830a8c2fe35a93ee06f2bfb56a0885f5d1dfd"
        ),
        .binaryTarget(
            name: "DfinerySDKServiceExtension",
            url: "https://github.com/IGAWorksDev/dfinery-ios-sdk/releases/download/1.1.0/DfinerySDKServiceExtension.xcframework.zip",
            checksum: "2437d48bf53237d62c6a5c5795828987c418d30223e1eec5e3a8fc6a6762a43a"
        )
    ]
)
