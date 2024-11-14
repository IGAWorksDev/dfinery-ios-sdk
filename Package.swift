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
            url: "https://github.com/IGAWorksDev/dfinery-ios-sdk/releases/download/1.1.2/DfinerySDK.xcframework.zip",
            checksum: "4420cf582478ca2d95ce1940f293a2620605abd69f8d5fb11ba7f29fd2e0a78b"
        ),
        .binaryTarget(
            name: "DfinerySDKServiceExtension",
            url: "https://github.com/IGAWorksDev/dfinery-ios-sdk/releases/download/1.1.2/DfinerySDKServiceExtension.xcframework.zip",
            checksum: "f01940c91c905a23ed6d449efa03eca5cebc917978a242d21cda76353283c0e7"
        )
    ]
)
