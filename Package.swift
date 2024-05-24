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
			url: "https://github.com/sbooth/flac-binary-xcframework/releases/download/0.1.0/FLAC.xcframework.zip",
			checksum: "0f3fcbce759df8405852067f02f782719ac5b91b616f177b4103439518fa3ff4"),
	]
)
