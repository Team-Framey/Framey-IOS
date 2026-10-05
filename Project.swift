import ProjectDescription

let project = Project(
    name: "Framey",
    settings: .settings(
        configurations: [
            .debug(name: "Debug", xcconfig: "Config/Base.xcconfig"),
            .release(name: "Release", xcconfig: "Config/Base.xcconfig"),
        ]
    ),
    targets: [
        .target(
            name: "Framey",
            destinations: [.iPhone],
            product: .app,
            bundleId: "com.framey.Framey$(BUNDLE_ID_SUFFIX)",
            deploymentTargets: .iOS("17.0"),
            infoPlist: .extendingDefault(with: [
                "UILaunchScreen": [:],
                "UISupportedInterfaceOrientations": ["UIInterfaceOrientationPortrait"],
            ]),
            sources: ["Framey/**"],
            resources: ["Framey/Assets.xcassets"],
            settings: .settings(base: [
                "SWIFT_VERSION": "6.0",
                "MARKETING_VERSION": "1.0",
                "CURRENT_PROJECT_VERSION": "1",
            ])
        ),
    ]
)
