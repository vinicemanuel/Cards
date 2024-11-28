//
//  MenuView.swift
//  Cards
//
//  Created by vncemanuel on 27/11/24.
//

import SwiftUI
import Combine

struct MenuView<ViewModel: MenuViewModel>: View {
    @ObservedObject private var viewModel: ViewModel
    private var model: MenuModel { viewModel.model }
    
    init(viewModel: ViewModel) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        Text("Hello, World!")
    }
}

#Preview(traits: .landscapeLeft) {
    MenuView<MenuViewModelImp>(
        viewModel: MenuViewModelImp(
            model: MenuModel()
        )
    )
}
