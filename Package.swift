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
            checksum: "f674c7f393b40bbfe2619772c09a215574ef72a739a72476941cf2231cc96aa5"
        ),
        .binaryTarget(
            name: "DfinerySDKServiceExtension",
            url: "https://github.com/IGAWorksDev/dfinery-ios-sdk/releases/download/v2.5.1/DfinerySDKServiceExtension.xcframework.zip",
            checksum: "0b06778d5f2fcb7cd5bb807b96268384af639c17afcb38e95075c435185921c1"
        )
    ]
)
