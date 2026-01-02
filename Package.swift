// swift-tools-version:5.7.1
import PackageDescription

let package = Package(
    name: "KeychainSwift",
    products: [
        .library(name: "KeychainSwift", targets: ["KeychainSwift"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
          name: "KeychainSwift",
          dependencies: [],
          path: "Sources",
          exclude: ["Info.plist"],
          swiftSettings: [
            .unsafeFlags(["-enable-library-evolution"])
          ]
        ),
        .testTarget(
            name: "KeychainSwiftTests",
            dependencies: ["KeychainSwift"],
            exclude: ["ClearTests.swift"]
        )
    ]
)
