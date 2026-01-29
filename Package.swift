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
            url: "https://github.com/IGAWorksDev/dfinery-ios-sdk/releases/download/v2.3.5/DfinerySDK.xcframework.zip",
            checksum: "b570190663a430cb09a633ea011e450bb9ca42db5df72efb1507252cc0495155"
        ),
        .binaryTarget(
            name: "DfinerySDKServiceExtension",
            url: "https://github.com/IGAWorksDev/dfinery-ios-sdk/releases/download/v2.3.5/DfinerySDKServiceExtension.xcframework.zip",
            checksum: "a0aa1c26422af03b0c52018487be31a357e006d929c47764bd0f5bccc9f2f850"
        )
    ]
)
