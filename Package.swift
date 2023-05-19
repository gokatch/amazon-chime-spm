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
            url: "https://github.com/gokatch/amazon-chime-spm/releases/download/v0.23.1/AmazonChimeSDK.xcframework.zip",
            checksum: "d91682a6e9312893061139e03424ff8b421847af903023b205b209b1f1edb822"
        ),
        .binaryTarget(
            name: "AmazonChimeSDKMedia",
            url: "https://github.com/gokatch/amazon-chime-spm/releases/download/v0.23.1/AmazonChimeSDKMedia.xcframework.zip",
            checksum: "09097164281aada97bd0a3570c22aa4f442d134dadaccce9a8c323d9988a969f"
        )
    ]
)
