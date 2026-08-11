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
            url: "https://github.com/IGAWorksDev/dfinery-ios-sdk/releases/download/v2.5.1/DfinerySDK.xcframework.zip",
            checksum: "2966d6015191af0cf0252887bb11ca658a88ea03df615f3fffcb1aa39563a0e9"
        ),
        .binaryTarget(
            name: "DfinerySDKServiceExtension",
            url: "https://github.com/IGAWorksDev/dfinery-ios-sdk/releases/download/v2.5.1/DfinerySDKServiceExtension.xcframework.zip",
            checksum: "2031a50f4a15ce80b9afc1594f9e654bcd5a1b8b78e9ab7657c496fcd9575605"
        )
    ]
)
