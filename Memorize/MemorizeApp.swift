//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Marco Abundo on 8/10/21.
//

import SwiftUI

@main
struct MemorizeApp: App {
    private let game = EmojiMemoryGame()
    
    var body: some Scene {
        WindowGroup {
            EmojiMemoryGameView(game: game)
        }
    }
}
