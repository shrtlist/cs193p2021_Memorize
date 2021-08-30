//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Marco Abundo on 8/10/21.
//

import SwiftUI

class EmojiMemoryGame: ObservableObject {
    private static let emojis = ["🚗","🚕","🚙","🚘","🚃","✈️","🚀","🚁","🛥","🚜","🚚","🚓","🚒","🚐"]
    typealias Card = MemoryGame<String>.Card
    
    private static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: 8) { pairIndex in emojis[pairIndex] }
    }
    
    @Published private var model = createMemoryGame()
    
    var cards: [Card] {
        model.cards
    }

    // MARK: - Intent(s)
    
    func choose(_ card: Card) {
        model.choose(card)
    }
    
    func shuffle() {
        model.shuffle()
    }
    
    func restart() {
        model = EmojiMemoryGame.createMemoryGame()
    }
}
