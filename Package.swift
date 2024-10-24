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
            url: "https://github.com/IGAWorksDev/dfinery-ios-sdk/releases/download/1.1.1/DfinerySDK.xcframework.zip",
            checksum: "4ee4d1f6591c5e84862b69440f6f7021fe1fdc3f0c81289ffc733ca5c4b1d2db"
        ),
        .binaryTarget(
            name: "DfinerySDKServiceExtension",
            url: "https://github.com/IGAWorksDev/dfinery-ios-sdk/releases/download/1.1.1/DfinerySDKServiceExtension.xcframework.zip",
            checksum: "74d2b369c2917f038624b164f3b625238c0962684336cdda5e0a478d25427e18"
        )
    ]
)
