// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
	name: "flac-binary-xcframework",
	platforms: [
		.macOS(.v10_15),
		.iOS(.v14),
	],
	products: [
		// Products define the executables and libraries a package produces, making them visible to other packages.
		.library(
			name: "FLAC",
			targets: [
				"FLAC",
			]),
	],
	targets: [
		// Targets are the basic building blocks of a package, defining a module or a test suite.
		// Targets can depend on other targets in this package and products from dependencies.
		.binaryTarget(
			name: "FLAC",
			url: "https://github.com/sbooth/flac-binary-xcframework/releases/download/0.1.1/FLAC.xcframework.zip",
			checksum: "32e63858e9402aacc4a66876abb7a8496051fb9d7171cce6ec0ef238d44acc35"),
	]
)
