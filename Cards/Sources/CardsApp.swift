import SwiftUI

@main
struct CardsApp: App {
    var body: some Scene {
        WindowGroup {
            MenuView<MenuViewModelImp>(
                viewModel: MenuViewModelImp(
                    model: MenuModel()
                )
            )
        }
    }
}
