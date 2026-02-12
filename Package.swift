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
            url: "https://github.com/IGAWorksDev/dfinery-ios-sdk/releases/download/v2.4.1/DfinerySDK.xcframework.zip",
            checksum: "4ad5103688f4695d027172b349def5bd79a881ff774f4b704f75586177ee4de3"
        ),
        .binaryTarget(
            name: "DfinerySDKServiceExtension",
            url: "https://github.com/IGAWorksDev/dfinery-ios-sdk/releases/download/v2.4.1/DfinerySDKServiceExtension.xcframework.zip",
            checksum: "7886d97e5b667e0a263bbd9c4494f8f4cc62e3cfd9f90333c4077e45af5b0546"
        )
    ]
)
