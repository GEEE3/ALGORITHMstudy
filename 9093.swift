//
//  9093.swift
//  AlgorithmStudy
//
//  Created by geee3 on 2023/04/02.
//

import Foundation

var counter = Int(readLine()!)!

for _ in 0..<counter {
    let input = readLine()!
    let reversed = String(input.reversed())
    let output = reversed.split(separator: " ")
    let length = output.count
    
    for index in 0..<length {
        print(output[length - index - 1], terminator: "")
        
        if index == length - 1 {
            print("")
        } else {
            print(" ", terminator: "")
        }
    }
    counter = counter - 1
}
