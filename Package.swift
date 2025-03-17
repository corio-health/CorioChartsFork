// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
    name: "CorioChartsFork",
    platforms: [
          .iOS(.v12),
          .tvOS(.v12),
          .macOS(.v10_12),
    ],
    products: [
        .library(
            name: "CorioChartsFork",
            targets: ["CorioChartsFork"]),
        .library(
            name: "CorioChartsForkDynamic",
            type: .dynamic,
            targets: ["CorioChartsFork"])
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-algorithms", .exact("1.2.0"))
    ],
    targets: [
        .target(
            name: "CorioChartsFork",
            dependencies: [.product(name: "Algorithms", package: "swift-algorithms")]
        )
    ],
    swiftLanguageVersions: [.v5]
)
