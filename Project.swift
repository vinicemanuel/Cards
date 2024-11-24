import ProjectDescription

let project = Project(
    name: "Cards",
    targets: [
        .target(
            name: "Cards",
            destinations: .iOS,
            product: .app,
            bundleId: "io.tuist.Cards",
            infoPlist: getInfoPlist(),
            sources: ["Cards/Sources/**"],
            resources: ["Cards/Resources/**"],
            dependencies: []
        ),
        .target(
            name: "CardsTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "io.tuist.CardsTests",
            infoPlist: .default,
            sources: ["Cards/Tests/**"],
            resources: [],
            dependencies: [.target(name: "Cards")]
        ),
    ]
)

fileprivate func getInfoPlist() -> InfoPlist {
    return .extendingDefault(
        with: [
            "UILaunchScreen": [
                "UIColorName": "",
                "UIImageName": "",
            ],
            "UISupportedInterfaceOrientations": [
                "UIInterfaceOrientationLandscapeRight",
                "UIInterfaceOrientationLandscapeLeft"
            ]
            
        ]
    )
}
