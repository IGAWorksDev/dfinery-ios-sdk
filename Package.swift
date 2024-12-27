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
            url: "https://github.com/IGAWorksDev/dfinery-ios-sdk/releases/download/2.0.0/DfinerySDK.xcframework.zip",
            checksum: "57f288c51e0e92fa61aafe40c399052565b528a1ce93d75cb6219bc8fdd921e0"
        ),
        .binaryTarget(
            name: "DfinerySDKServiceExtension",
            url: "https://github.com/IGAWorksDev/dfinery-ios-sdk/releases/download/2.0.0/DfinerySDKServiceExtension.xcframework.zip",
            checksum: "a16890028a5021147df6e287b257b12f3c5545045aba27a98526bc902ab94182"
        )
    ]
)
