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
			url: "https://github.com/sbooth/flac-binary-xcframework/releases/download/0.1.3/FLAC.xcframework.zip",
			checksum: "b7d747dff4bb94fa74895bdd69f35eeea06f44663ea63f43ca98a83519b49e92"),
	]
)
