//
//  Menu.swift
//  Cards
//
//  Created by vncemanuel on 27/11/24.
//

import Foundation
import Combine

protocol MenuViewModel: ObservableObject {
    var model: MenuModel { get }
    var modelPublisher: Published<MenuModel>.Publisher { get }
    func playAction()
    func configAction()
}

struct MenuModel {
    let playButtonTitle: String
    let configButtonTitle: String
}
