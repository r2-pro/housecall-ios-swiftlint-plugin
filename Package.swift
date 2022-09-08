// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "Housecall SwiftLint Plugin",
  platforms: [
    .iOS(.v13)
  ],
  products: [
    .plugin(
      name: "Housecall SwiftLint Plugin",
      targets: ["SwiftLintPlugin"]),
  ],
  dependencies: [],
  targets: [
    .binaryTarget(name: "SwiftLintBinary", path: "Vendor/SwiftLintBinary.artifactbundle"),
    .plugin(
      name: "SwiftLintPlugin",
      capability: .buildTool(),
      dependencies: ["SwiftLintBinary"]
    ),
  ]
)
