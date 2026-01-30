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
            url: "https://github.com/IGAWorksDev/dfinery-ios-sdk/releases/download/v2.4.0/DfinerySDK.xcframework.zip",
            checksum: "69c8f0c85e7a78acc53717eb803eee73d25ce7e110da93fb96f3b3f27d1a6655"
        ),
        .binaryTarget(
            name: "DfinerySDKServiceExtension",
            url: "https://github.com/IGAWorksDev/dfinery-ios-sdk/releases/download/v2.4.0/DfinerySDKServiceExtension.xcframework.zip",
            checksum: "ef606a6c7fe5621735df2206e1d288e8f212697ed8e7d9dbf7e9271aed146f49"
        )
    ]
)
