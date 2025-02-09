// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "RadioBrowserKit",
    platforms: [
        .iOS(.v13),
        .macOS(.v10_15)
    ],
    products: [
        .library(name: "RadioBrowserKit", targets: ["RadioBrowserKit"])
    ],
    dependencies: [
        .package(url: "https://github.com/sharplet/Regex.git", from: "2.1.0"),
        .package(url: "https://github.com/ArtSabintsev/Zephyr.git", from: "3.0.0"),
        .package(name: "SwiftyBeaver", url: "https://github.com/SwiftyBeaver/SwiftyBeaver.git", from: "1.9.0"),
    ],
    targets: [
        .target(
            name: "RadioBrowserKit",
            dependencies: ["Regex", "SwiftyBeaver", "Zephyr"],
            path: "Sources"
        ),
        .testTarget(
            name: "RadioBrowserKitTests",
            dependencies: ["RadioBrowserKit"]
        )
    ],
    swiftLanguageVersions: [.v5]
)
