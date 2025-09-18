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
            url: "https://github.com/IGAWorksDev/dfinery-ios-sdk/releases/download/2.3.1/DfinerySDK.xcframework.zip",
            checksum: "9337f19a4458d8770888235ef58960dad8b24a2afe71b86556a31f0711d28c14"
        ),
        .binaryTarget(
            name: "DfinerySDKServiceExtension",
            url: "https://github.com/IGAWorksDev/dfinery-ios-sdk/releases/download/2.3.1/DfinerySDKServiceExtension.xcframework.zip",
            checksum: "731c1905e71f3abd66c5365a05585550347b082522591307eaad75766a3af1e6"
        )
    ]
)
