//
//  GameState.swift
//  Gamer
//
//  Created by Daniel Orcutt on 4/8/21.
//

import Foundation

enum GameState {
    case start, win, lose, draw
    
    var status: String {
        switch self {
        case .start:
            return "Play Now?"
        case .win:
            return "You Won! 🤠"
        case .lose:
            return "You Lose Loser! 🍳"
        case .draw:
            return "Wow we Both Suck. 🇻🇮"
        }
    }
}
