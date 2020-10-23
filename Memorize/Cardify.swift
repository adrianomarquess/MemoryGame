//
//  Cardify.swift
//  Memorize
//
//  Created by Adriano Marques on 23/10/20.
//

import SwiftUI

struct Cardify: ViewModifier {
    var isFaceUp: Bool
    
    func body(content: Content) -> some View {
        ZStack {
            if isFaceUp {
                RoundedRectangle(cornerRadius: cornerRadius).fill(Color.white)
                RoundedRectangle(cornerRadius: 10.0).stroke(lineWidth: borderWidth)
                content
            } else {
                RoundedRectangle(cornerRadius: 10.0).fill()
            }
        }
    }
    
    // MARK: - Drawing Constants
    
    private let cornerRadius: CGFloat = 10.0
    private let borderWidth: CGFloat = 1
}

extension View {
    func cardify(isFaceUp: Bool) -> some View {
        self.modifier(Cardify(isFaceUp: isFaceUp))
    }
}
