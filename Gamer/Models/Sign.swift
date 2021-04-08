//
//  Sign.swift
//  Gamer
//
//  Created by Daniel Orcutt on 4/8/21.
//

import Foundation

// Will generate the devices Sign choice
func randomSign() -> Sign {
    let sign = Int.random(in: 0...2)
    if sign == 0 {
        return .rock
    } else if sign == 1 {
        return .paper
    } else {
        return .scissors
    }
}

// Handles the users choice
enum Sign {
    case rock, paper, scissors
    
    var emoji: String {
        switch self {
        case .rock:
            return "👊"
        case .paper:
            return "🤚"
        case . scissors:
            return "✌️"
        }
    }
    
    func gameState(against opponentSign: Sign) -> GameState {
        if self == opponentSign {
            return .draw
        }
        
        switch self {
        case .rock:
            if opponentSign == .scissors {
                return .win
            }
        case .paper:
            if opponentSign == .rock {
                return .win
            }
        case .scissors:
            if opponentSign == .paper {
                return .win
            }
        }
        return .lose
    }
}
