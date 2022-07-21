# Amazon Chime Spm
Original repository: https://github.com/aws/amazon-chime-sdk-ios


## Include Amazon Chime SDK in Your Project

To include the SDK binaries in your own project, follow these steps.

For the purpose of setup, your project's root folder (where you can find your `.xcodeproj` file) will be referred to as `root`.

### 1. Download Binaries

* Download the `AmazonChimeSDK` and `AmazonChimeSDKMedia` binaries from the latest [release](https://github.com/aws/amazon-chime-sdk-ios/releases/latest).

* Unzip `AmazonChimeSDK` and `AmazonChimeSDKMedia`
* Open `AmazonChimeSDK` and `AmazonChimeSDKMedia` folders and zipped the `.xcframework` from each folders

### 2. Update Package.swift
* Open the Package.swift and update the urllink (put the new version, it does not have to exist yet) and the checksums
* Call this command on terminal and copy the value as the value of checksums
* `shasum -a 256 AmazonChimeSDKMedia.xcframework.zip`
* `shasum -a 256 AmazonChimeSDK.xcframework.zip`
* Commit the changes to this Repo

### 3. Create tag and release on Github
* Tag the commit with the same version number as you specified in the Package.swift
* Create a release on Github from this tag and upload the `AmazonChimeSDKMedia.xcframework.zip` and `AmazonChimeSDK.xcframework.zip` files.

### 4. Update Katch SPM files
* Open Katch Project
* Run the build
* If it's ran without issue, Congratulations you have completed updating the Chime release version
