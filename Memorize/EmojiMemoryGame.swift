//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Adriano Marques on 08/10/20.
//

import SwiftUI

class EmojiMemoryGame: ObservableObject {
    @Published private var model: MemoryGame<String> =  EmojiMemoryGame.createMemoryGame()
            
    static func createMemoryGame() -> MemoryGame<String> {
        var animals = ["🐙", "🐳", "🦋", "🦁", "🦄", "🐷", "🐶", "🐓", "🐇", "🐞"];
        animals.shuffle();
        
        let randomInt = Int.random(in: 4..<10) 
        let emojisGame = animals[..<randomInt]
    
        return MemoryGame<String>(numberOdPairsOfCards: emojisGame.count, cardContentFactory: { pairIndex in
            return emojisGame[pairIndex]
        })
    }
    
    // MARK: Acess to the Model
    
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
    
    // MARK: Intent(s)
    
    func choose(card: MemoryGame<String>.Card) {
        model.choose(card: card)
    }

}
