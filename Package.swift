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
            url: "https://github.com/IGAWorksDev/dfinery-ios-sdk/releases/download/2.2.0/DfinerySDK.xcframework.zip",
            checksum: "894b6333f9e789d21029c03f1b08aa80c6ac031309b3585443d7b7ffe0f9970b"
        ),
        .binaryTarget(
            name: "DfinerySDKServiceExtension",
            url: "https://github.com/IGAWorksDev/dfinery-ios-sdk/releases/download/2.2.0/DfinerySDKServiceExtension.xcframework.zip",
            checksum: "f08e92173da4d7e03bcdd9b9147216209f557dcdcf10376a884feec540598338"
        )
    ]
)
