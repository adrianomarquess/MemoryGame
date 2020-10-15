//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Adriano Marques on 05/10/20.
//

import SwiftUI

@main
struct MemorizeApp: App {
    var body: some Scene {
        WindowGroup {
            let game = EmojiMemoryGame();
            EmojiMemoryGameView(viewModel: game)
        }
    }
}
