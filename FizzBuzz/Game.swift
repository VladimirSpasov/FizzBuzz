//
//  Game.swift
//  FizzBuzz
//
//  Created by SPASOV DIMITROV Vladimir on 9/1/18.
//  Copyright © 2018 SPASOV DIMITROV Vladimir. All rights reserved.
//

import Foundation

class Game {
    var score: Int
    let brain: Brain
    
    init() {
        score = 0
        brain = Brain()
    }
    
    func play(move: Move) -> (right: Bool, score: Int) {
        let result = brain.check(number: score + 1)
        
        if result == move {
            score += 1
            return (true, score)
        } else {
            return (false, score)
        }
    }
}
