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
            url: "https://github.com/IGAWorksDev/dfinery-ios-sdk/releases/download/v2.6.1/DfinerySDK.xcframework.zip",
            checksum: "2ea5400cc5c25531011e7000f21d0c74d13f8e988089c1c7e5a81fc76c59098e"
        ),
        .binaryTarget(
            name: "DfinerySDKServiceExtension",
            url: "https://github.com/IGAWorksDev/dfinery-ios-sdk/releases/download/v2.6.1/DfinerySDKServiceExtension.xcframework.zip",
            checksum: "b9031307e80a126236d093d6ef12fc8c693d0efea49227fd2139116abfcc29df"
        )
    ]
)
