// swift-tools-version:5.5.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let packageName = "Demo"

// Necessary for `sourcekit-lsp` support in VSCode:`

let package = Package(
  name: packageName,
  platforms: [
    .iOS(.v14),
    .watchOS(.v8),
    .macOS(.v12),
  ],
  products: [
    .library(name: packageName, targets: [packageName]),
  ],
  dependencies: [
    .package(url: "https://github.com/krzysztofzablocki/Inject.git", .branch("main")),
  ],
  targets: [
    .target(
      name: packageName,
      dependencies: [
        .byNameItem(
          name: "Inject",
          condition: .when(platforms: [
            .iOS,
          ])
        ),
      ],
      path: "Sources/App"
    ),
    .testTarget(
      name: "UnitTests",
      dependencies: [
        .targetItem(name: packageName, condition: nil),
      ],
      path: "Sources/Tests/UnitTests"
    ),
  ]
)
