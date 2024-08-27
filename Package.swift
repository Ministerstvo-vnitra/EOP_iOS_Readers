// swift-tools-version:5.6

import PackageDescription

let package = Package(
    name: "EopReaders",
    platforms: [
        .iOS(.v13),
    ],
    products: [
        .library(
            name: "ACSReaderFramework",
            targets: ["ACSReaderFramework", "ACSLibrary"]),
        .library(
            name: "AirIDReaderFramework",
            targets: ["AirIDReaderFramework", "AirIDLibrary"]),
        .library(
            name: "FeitianReaderFramework",
            targets: ["FeitianReaderFramework", "FeitianLibrary"]),
    ],
    targets: [
        .binaryTarget(
            name: "ACSReaderFramework",
            path: "ACSReaderFramework.xcframework"
        ),
        .binaryTarget(
            name: "AirIDReaderFramework",
            path: "AirIDReaderFramework.xcframework"
        ),
        .binaryTarget(
            name: "FeitianReaderFramework",
            path: "FeitianReaderFramework.xcframework"
        ),
        .binaryTarget(
            name: "ACSLibrary",
            path: "ACSLibrary.xcframework"
        ),
        .binaryTarget(
            name: "AirIDLibrary",
            path: "AirIDLibrary.xcframework"
        ),
        .binaryTarget(
            name: "FeitianLibrary",
            path: "FeitianLibrary.xcframework"
        )
    ]
)
