// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "GCDWebServer",
    defaultLocalization: "en",
    platforms: [
        .iOS(.v13),
        .macOS(.v11),
        .tvOS(.v13),
        .watchOS(.v6)
    ],
    products: [
        .library(
            name: "GCDWebServer",
            targets: ["GCDWebServer"]),
        .library(
            name: "GCDWebUploader",
            targets: ["GCDWebUploader"]),
        .library(
            name: "GCDWebDAVServer",
            targets: ["GCDWebDAVServer"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "GCDWebServer",
            dependencies: [],
        	path: "./GCDWebServer",
            publicHeadersPath: "./**",
        	cSettings: [
      			.headerSearchPath("./")
   			]
        ),
        .target(
            name: "GCDWebUploader",
            dependencies: [],
        	path: "./GCDWebUploader",
        	exclude: ["./GCDWebUploader.bundle"]
        ),
        .target(
            name: "GCDWebDAVServer",
            dependencies: [],
        	path: "./GCDWebDAVServer"
        )
    ]
)