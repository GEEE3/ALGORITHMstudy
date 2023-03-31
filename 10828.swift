//
//  10828.swift
//  AlgorithmStudy
//
//  Created by geee3 on 2023/03/31.
//

import Foundation

var stack: [Int] = []
var top = 0
var counter = Int(readLine()!)!

for _ in 0..<counter {
    let input = readLine()!.split(separator: " ")
    
    switch input[0] {
    case "push":
        stack.insert(Int(input[1])!, at: top)
        top = top + 1
    case "pop":
        if top == 0 {
            print("-1")
        } else {
            print(stack[top - 1])
            top = top - 1
        }
    case "size":
        print(top)
    case "empty":
        if top == 0 {
            print("1")
        } else {
            print("0")
        }
    default:
        if top == 0 {
            print("-1")
        } else {
            print(stack[top - 1])
        }
    }
    counter = counter - 1
}
