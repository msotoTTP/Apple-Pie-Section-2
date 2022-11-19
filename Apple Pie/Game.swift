//
//  Game.swift
//  Apple Pie
//
//  Created by Matthew Soto on 11/19/22.
//

import Foundation

struct Game {
    var word: String
    var incorrectMovesRemaining: Int
    //a list of all of the letters the user has guessed so far
    var guessedLetters: [Character]
    
    mutating func playerGuessed(letter: Character) {
        guessedLetters.append(letter)
        let incorrectGuess = !word.contains(letter)
        if incorrectGuess {
            incorrectMovesRemaining -= 1
        }
    }
}
