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
            url: "https://github.com/IGAWorksDev/dfinery-ios-sdk/releases/download/2.2.1/DfinerySDK.xcframework.zip",
            checksum: "f2a9c3df1acf8f442b93cdb834572f8f083adf9f448bfa5c3fde8111d8b427f6"
        ),
        .binaryTarget(
            name: "DfinerySDKServiceExtension",
            url: "https://github.com/IGAWorksDev/dfinery-ios-sdk/releases/download/2.2.1/DfinerySDKServiceExtension.xcframework.zip",
            checksum: "126c38246b1295445e8a4c4b51a63a76a3405f0ae4ac9cdea9735ca43557af75"
        )
    ]
)
