//
//  1158.swift
//  AlgorithmStudy
//
//  Created by geee3 on 2023/04/27.
//

import Foundation

var queue: [Int] = []
var front = 0
var back = 0

var input = readLine()!.split(separator: " ")
let size = Int(input[0])!
let counter = Int(input[1])!

for index in 1...size {
    enqueue(number: index)
}
back = size - 1
print("<", terminator: "")

for index in 0..<size {
    for _ in 0..<counter - 1 {
        enqueue(number: dequeue())
    }
    
    if index == size - 1 {
        print(dequeue(), terminator: "")
    } else {
        print(dequeue(), terminator: ", ")
    }
}
print(">")

func enqueue(number: Int) {
    back = back + 1
    queue.append(number)
}

func dequeue() -> Int {
    front = front + 1
    return queue[front - 1]
}
