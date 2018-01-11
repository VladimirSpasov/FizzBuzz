//
//  Brain.swift
//  FizzBuzz
//
//  Created by SPASOV DIMITROV Vladimir on 9/1/18.
//  Copyright © 2018 SPASOV DIMITROV Vladimir. All rights reserved.
//

import Foundation

class Brain {
    
    func isDivisibleBy(divisor: Int, number: Int) -> Bool {
        return number % divisor == 0
    }
    
    func isDivisibleByThree(number: Int) -> Bool {
        return isDivisibleBy(divisor: 3, number: number)
    }
    
    func isDivisibleByFive(number: Int) -> Bool {
        return isDivisibleBy(divisor: 5, number: number)
    }
    
    func isDivisibleByFifteen(number: Int) -> Bool {
        return isDivisibleBy(divisor: 15, number: number)
    }
    
    func check(number: Int) -> Move {
        if isDivisibleByFifteen(number: number) {
            return Move.fizzBuzz
        } else if isDivisibleByFive(number: number) {
            return Move.buzz
        } else if isDivisibleByThree(number: number) {
            return Move.fizz
        } else {
            return Move.number
        }
    }
}
