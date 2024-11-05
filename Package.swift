// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
	name: "flac-binary-xcframework",
	platforms: [
		.macOS(.v11),
		.iOS(.v15),
		.tvOS(.v15),
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
			url: "https://github.com/sbooth/flac-binary-xcframework/releases/download/0.1.2/FLAC.xcframework.zip",
			checksum: "022713c0e02f326dd3f594e5c60fe39a16e6a18e1bb96a18d8f7ea8a088d7173"),
	]
)
