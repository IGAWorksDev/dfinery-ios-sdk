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
            url: "https://github.com/IGAWorksDev/dfinery-ios-sdk/releases/download/v2.5.0/DfinerySDK.xcframework.zip",
            checksum: "c67a4c96168b67e57cffe52f81489118f932803ccadd1893b16b48178c30a2cd"
        ),
        .binaryTarget(
            name: "DfinerySDKServiceExtension",
            url: "https://github.com/IGAWorksDev/dfinery-ios-sdk/releases/download/v2.5.0/DfinerySDKServiceExtension.xcframework.zip",
            checksum: "3c8d13a43e3e1b84d25991e478e9920df1484826e738703943ecd45364f466be"
        )
    ]
)
