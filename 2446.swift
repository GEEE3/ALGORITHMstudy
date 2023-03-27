//
//  2446.swift
//  AlgorithmStudy
//
//  Created by geee3 on 2023/03/27.
//

import Foundation

let input = readLine()!
let size = Int(input)!

if size == 0 {
    print("")
} else {
    for index in 0..<size {
        for _ in 0..<index {
            print(" ", terminator: "")
        }
        for _ in 0..<(size - index) * 2 - 1 {
            print("*", terminator: "")
        }
        print("")
    }

    for index in 1..<size {
        for _ in 0..<size - index - 1 {
            print(" ", terminator: "")
        }
        for _ in 0..<index * 2 + 1 {
            print("*", terminator: "")
        }
        print("")
    }
}
