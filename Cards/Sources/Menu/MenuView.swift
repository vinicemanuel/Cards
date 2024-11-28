//
//  MenuView.swift
//  Cards
//
//  Created by vncemanuel on 27/11/24.
//

import SwiftUI
import Combine

fileprivate enum SizeConstants {
    static let gridSpacing: CGFloat = 18
    static let buttonHeight: CGFloat = 60
    static let buttonProportion: CGFloat = 0.4
}

struct MenuView<ViewModel: MenuViewModel>: View {
    @ObservedObject private var viewModel: ViewModel
    private var model: MenuModel { viewModel.model }
    
    init(viewModel: ViewModel) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        GeometryReader { geometry in
            Grid(verticalSpacing: SizeConstants.gridSpacing) {
                GridRow {
                    CardsButton(
                        title: model.playButtonTitle,
                        action: viewModel.playAction
                    )
                    .frame(height: SizeConstants.buttonHeight)
                }
                GridRow {
                    CardsButton(
                        title: model.configButtonTitle,
                        action: viewModel.configAction
                    )
                    .frame(height: SizeConstants.buttonHeight)
                }
            }
            .position(x: geometry.size.width / 2, y: geometry.size.height / 2)
            .frame(maxWidth: geometry.size.width * SizeConstants.buttonProportion)
        }
    }
}

#Preview(traits: .landscapeLeft) {
    MenuView<MenuViewModelImp>(
        viewModel: MenuViewModelImp(
            model: MenuModel(
                playButtonTitle: "Play",
                configButtonTitle: "Language"
            )
        )
    )
}
