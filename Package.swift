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
            url: "https://github.com/gokatch/amazon-chime-spm/releases/download/v0.22.7/AmazonChimeSDK.xcframework.zip",
            checksum: "eb61f0a975870b8ce93add5a635eb3437e3870f5a40e67cf29269c9c15558aed"
        ),
        .binaryTarget(
            name: "AmazonChimeSDKMedia",
            url: "https://github.com/gokatch/amazon-chime-spm/releases/download/v0.22.7/AmazonChimeSDKMedia.xcframework.zip",
            checksum: "b63113e4f2f98ded7eb2d86d0c0b207394b1f8c18e00cbd79438ae7336164b63"
        )
    ]
)
