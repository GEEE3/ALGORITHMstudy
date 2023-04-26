//
//  2161.swift
//  AlgorithmStudy
//
//  Created by geee3 on 2023/04/26.
//

import Foundation

var queue: [Int] = []
var front = 0
var back = 0

var size = Int(readLine()!)!

for index in 1...size {
    enqueue(number: index)
}
back = size - 1

for _ in 0..<size {
    if back - front == 0 {
        print(queue[front])
        break
    } else if back - front == 1 {
        print(queue[front], queue[back])
        break
    } else {
        print(dequeue(), terminator: " ")
        enqueue(number: dequeue())
    }
}

func enqueue(number: Int) {
    back = back + 1
    queue.append(number)
}

func dequeue() -> Int {
    front = front + 1
    return queue[front - 1]
}
