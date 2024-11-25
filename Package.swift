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
            url: "https://github.com/IGAWorksDev/dfinery-ios-sdk/releases/download/1.2.0/DfinerySDK.xcframework.zip",
            checksum: "9edfa9257a73a3de875272d7c24565e9b9130eb270a1213eaf76d9ed25b58021"
        ),
        .binaryTarget(
            name: "DfinerySDKServiceExtension",
            url: "https://github.com/IGAWorksDev/dfinery-ios-sdk/releases/download/1.2.0/DfinerySDKServiceExtension.xcframework.zip",
            checksum: "6dcebab4562f8b273324a1299b8628e1ef1893fb2054769cded16d847b03aea5"
        )
    ]
)
