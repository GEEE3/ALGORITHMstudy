//
//  10799.swift
//  AlgorithmStudy
//
//  Created by geee3 on 2023/04/04.
//

import Foundation

var stack: [Character] = []
var pointer = 0
var counter = 0

var buffer: Character = "("
let input = String(readLine()!)

for parenthesis in input {
    if parenthesis == "(" {
        push(character: parenthesis)
    } else {
        if buffer == "(" {
            pointer = pointer - 1
            counter = counter + pointer
        } else {
            pointer = pointer - 1
            counter = counter + 1
        }
    }
    buffer = parenthesis
}
print(counter)

func push(character: Character) {
    stack.insert(character, at: pointer)
    pointer = pointer + 1
}
