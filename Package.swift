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
            url: "https://github.com/gokatch/amazon-chime-spm/releases/download/v0.22.0/AmazonChimeSDK.xcframework.zip",
            checksum: "5979fa1c508b0c0fa3159d9e9d6335afa34457dc4ff0577c5ad3b68774a85a1d"
        ),
        .binaryTarget(
            name: "AmazonChimeSDKMedia",
            url: "https://github.com/gokatch/amazon-chime-spm/releases/download/v0.22.0/AmazonChimeSDKMedia.xcframework.zip",
            checksum: "e523c935d1a1be52e13bc5d315f134947da3aeb19ce5db00e25d3d41410a5ee5"
        )
    ]
)
