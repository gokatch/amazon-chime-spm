// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "AmazonChimeSDK",
    products: [
        .library(name: "AmazonChimeSDK", targets: ["AmazonChimeSDK", "AmazonChimeSDKMedia"])
    ],
    dependencies: [
    ],
    targets: [
        .binaryTarget(
            name: "AmazonChimeSDK",
            url: "https://github.com/gokatch/amazon-chime-spm/releases/download/v0.19.2/AmazonChimeSDK.xcframework.zip",
            checksum: "cc7cd2f951c17c43a497d2f703db7daa3ccd7195e40fc83fd3e4687882b7da46"
        ),
        .binaryTarget(
            name: "AmazonChimeSDKMedia",
            url: "https://github.com/gokatch/amazon-chime-spm/releases/download/v0.19.2/AmazonChimeSDKMedia.xcframework.zip",
            checksum: "66eb7af5ffdeabfbcc9b42a7e8e34348607c2cb166a39449fa6dabf18ec0c77f"
        )
    ]
)
