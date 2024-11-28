//
//  MenuViewModelImp.swift
//  Cards
//
//  Created by vncemanuel on 27/11/24.
//

import Foundation
import Combine

final class MenuViewModelImp {
    @Published var model: MenuModel

    init(model: MenuModel) {
        self.model = model
    }
}

extension MenuViewModelImp: MenuViewModel {
    var modelPublisher: Published<MenuModel>.Publisher { $model }
    
    func playAction() { }
    
    func configAction() { }
}

