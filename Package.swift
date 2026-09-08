// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "YYImage",
    platforms: [.iOS(.v13)],
    products: [
        .library(name: "YYImage", targets: ["YYImage"])
    ],
    targets: [
        .target(
            name: "YYImage",
            path: "YYImage",
            publicHeadersPath: ".",
            linkerSettings: [
                .linkedLibrary("z"),
                .linkedFramework("UIKit"),
                .linkedFramework("CoreFoundation"),
                .linkedFramework("QuartzCore"),
                .linkedFramework("AssetsLibrary"),
                .linkedFramework("ImageIO"),
                .linkedFramework("Accelerate"),
                .linkedFramework("MobileCoreServices")
            ])
    ]
)
