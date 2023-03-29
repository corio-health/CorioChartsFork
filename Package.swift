// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
    name: "KenkouChartsFork",
    platforms: [
          .iOS(.v12),
          .tvOS(.v12),
          .macOS(.v10_12),
    ],
    products: [
        .library(
            name: "KenkouChartsFork",
            targets: ["KenkouChartsFork"]),
        .library(
            name: "KenkouChartsForkDynamic",
            type: .dynamic,
            targets: ["KenkouChartsFork"])
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-algorithms", from: "1.0.0")
    ],
    targets: [
        .target(
            name: "KenkouChartsFork",
            dependencies: [.product(name: "Algorithms", package: "swift-algorithms")]
        )
    ],
    swiftLanguageVersions: [.v5]
)
