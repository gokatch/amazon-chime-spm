# Amazon Chime Spm
An iOS client library for integrating multi-party communications powered by the Amazon Chime service.

## Build video calling, audio calling, and screen sharing applications powered by Amazon Chime.

The Amazon Chime SDK for iOS makes it easy to add collaborative audio calling,
video calling, and screen share viewing features to iOS applications by
using the same infrastructure services that power meetings on the Amazon
Chime service.

This Amazon Chime SDK for iOS works by connecting to meeting session
resources that you have created in your AWS account. The SDK has everything
you need to build custom calling and collaboration experiences in your
iOS application, including methods to: configure meeting sessions, list
and select audio devices, switch video devices, start and stop screen share
viewing, receive callbacks when media events occur such as volume changes,
and manage meeting features such as audio mute and video tile bindings.

We also have an [Amazon Chime SDK Project Board](https://aws.github.io/amazon-chime-sdk-js/modules/projectboard.html) where you can find community requests and their statuses.

To get started, see the following resources:

* [Amazon Chime](https://aws.amazon.com/chime)
* [Amazon Chime Developer Guide](https://docs.aws.amazon.com/chime/latest/dg/what-is-chime.html)
* [Amazon Chime SDK API Reference](http://docs.aws.amazon.com/chime/latest/APIReference/Welcome.html)
* [SDK Documentation](https://aws.github.io/amazon-chime-sdk-ios/)

And review the following guides:
* [API Overview](guides/api_overview.md)
* [Getting Started](guides/getting_started.md)
* [Frequently Asked Questions (FAQ)](#frequently-asked-questions)
* [Custom Video Sources, Processors, and Sinks](guides/custom_video.md)
* [Video Pagination with Active Speaker-Based Policy](guides/video_pagination.md)
* [Content Share](guides/content_share.md)
* [Meeting Events](guides/meeting_events.md)
* [Event Ingestion](guides/event_ingestion.md)

## Include Amazon Chime SDK in Your Project

To include the SDK binaries in your own project, follow these steps.

For the purpose of setup, your project's root folder (where you can find your `.xcodeproj` file) will be referred to as `root`.

### 1. Download Binaries

* Download the `AmazonChimeSDK` and `AmazonChimeSDKMedia` binaries from the latest [release](https://github.com/aws/amazon-chime-sdk-ios/releases/latest).

* Unzip `AmazonChimeSDK` and `AmazonChimeSDKMedia`
* Open `AmazonChimeSDK` and `AmazonChimeSDKMedia` folders and zipped the `.xcframework` from each folders
* Go to [create release](https://github.com/gokatch/amazon-chime-sdk-ios/releases) and taps on `draft a new release
<img width="931" alt="Screen Shot 2022-03-24 at 10 49 43 AM" src="https://user-images.githubusercontent.com/6547793/159947439-7cfe4339-f7b1-46d8-bf87-cf6f67567399.png">

* Create a new release with the same version as what you downloaded from [aws chime ios release](https://github.com/aws/amazon-chime-sdk-ios/releases/latest).
* Dragged the zipped `.xcframework` and placed it as attachment for the new release and published it

### 2. Update Package.swift
* Open the Package.swift and update the urllink and the checksums
* Call this command on terminal and copy the value as the value of checksums
* `shasum -a 256 AmazonChimeSDKMedia.xcframework.zip`
* `shasum -a 256 AmazonChimeSDK.xcframework.zip`

### 3. Update Katch SPM files
* Open Katch Project and Go to Package Dependency
* Change the version of Amazon Chime with the latest version and save it
* Run the build
* Create a PR for the changes
* Congratulations you have completed updating the Chime release version
