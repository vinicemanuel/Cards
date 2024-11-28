//
//  CardsButton.swift
//  Cards
//
//  Created by vncemanuel on 27/11/24.
//

import SwiftUI

struct CardsButton: View {
    let title: String
    let action: () -> Void

    var body: some View {
        Button(action: action) {
            Text(title)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .modifier(ButtonTextModifier())
                .background(ButtonBackground())
        }
    }
}

fileprivate struct ButtonTextModifier: ViewModifier {
    func body(content: Content) -> some View {
        return content
            .font(.headline)
            .padding()
            .foregroundColor(.white)
    }
}

fileprivate struct ButtonBackground: View {
    var body: some View {
        GeometryReader { geometry in
            Color.blue
                .cornerRadius(geometry.size.height / 2)
        }
    }
}

#Preview {
    CardsButton(title: "Title", action: {})
        .frame(width: 300, height: 100)
}
