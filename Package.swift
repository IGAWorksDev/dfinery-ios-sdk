// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let VERSION = "1.0.0"
let CHECKSUM = "6882fab2e475274779f3a896e8875c777e00464a39d72c9eefa7736cc6214bb7"


let package = Package(
    name: "DfinerySDK",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "DfinerySDK",
            targets: ["DfinerySDK"]),
    ],
    targets: [
        .binaryTarget(
            name: "DfinerySDK",
            url: "https://github.com/IGAWorksDev/dfinery-ios-sdk/releases/download/\(VERSION)/DfinerySDK.xcframework.zip",
            checksum: CHECKSUM
        )
    ]
)
