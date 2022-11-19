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
    var guessedLetters: [Character]
    var formattedWord: String {
        var guessedWord = ""
        for letter in word {
            if guessedLetters.contains(letter) {
                guessedWord.append(letter)
            } else {
                guessedWord.append("_")
            }
            guessedWord.append(" ")
        }
        return guessedWord
    }
    
    mutating func playerGuessed(letter: Character) {
        guessedLetters.append(letter)
        let incorrectGuess = !word.contains(letter)
        if incorrectGuess {
            incorrectMovesRemaining -= 1
        }
    }
}
