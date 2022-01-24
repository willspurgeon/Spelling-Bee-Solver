//
//  main.swift
//  Spelling Bee Solver
//
//  Created by Will Spurgeon on 1/12/21.
//

import Foundation

//let mainLetter = Character(CommandLine.arguments[1]).lowercased()
//let followupLetters = CommandLine.arguments[2...7].reduce("", { $0 + $1.lowercased() })

let mainLetter: Character = "p"
let followupLetters = "yletgo"

//let words = wordsRawString.split(separator: "\n")
let words = moreWords.split(separator: "\n")
let longWords = words.filter({ $0.count > 3 })

let wordsWithMainLetter = longWords.filter { $0.contains(mainLetter) }
let charSet = CharacterSet(followupLetters.unicodeScalars + mainLetter.unicodeScalars)

let solutions = wordsWithMainLetter.filter { charSet.isSuperset(of: CharacterSet($0.unicodeScalars)) }

for solution in solutions {
    print(solution)
}
