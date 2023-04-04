//
//  4949.swift
//  AlgorithmStudy
//
//  Created by geee3 on 2023/04/04.
//

import Foundation

var stack: [Character] = []
var pointer = 0

while (1 != 0) {
    let input = String(readLine()!)
    var balanceFlag = true
    if input == "." { break }
    
    for character in input {
        if character == "(" || character == "[" {
            push(character: character)
        }
        if character == ")" || character == "]" {
            let checker = pop()
            
            if character == ")" && checker != "(" {
                balanceFlag = false
                break
            }
            if character == "]" && checker != "[" {
                balanceFlag = false
                break
            }
        }
    }
    
    if pop() != "!" {
        balanceFlag = false
    }
    
    if balanceFlag {
        print("yes")
    } else {
        print("no")
    }
    stack.removeAll()
    pointer = 0
}

func push(character: Character) {
    stack.insert(character, at: pointer)
    pointer = pointer + 1
}

func pop() -> Character {
    if pointer == 0 {
        return "!"
    } else {
        pointer = pointer - 1
        return stack[pointer]
    }
}
