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
            url: "https://github.com/IGAWorksDev/dfinery-ios-sdk/releases/download/v2.3.4/DfinerySDK.xcframework.zip",
            checksum: "40abeb7b91cdb46a2691474d8db66a6dbbd8e0ba3f90ad7c3f49d420722ac52e"
        ),
        .binaryTarget(
            name: "DfinerySDKServiceExtension",
            url: "https://github.com/IGAWorksDev/dfinery-ios-sdk/releases/download/v2.3.4/DfinerySDKServiceExtension.xcframework.zip",
            checksum: "f6dd7556a8a6c89e77bc0ffbf1a19e42001028aefd675c42781597d4b0878873"
        )
    ]
)
