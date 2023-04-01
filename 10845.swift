//
//  10845.swift
//  AlgorithmStudy
//
//  Created by geee3 on 2023/04/01.
//

import Foundation

var queue: [Int] = []
var front = 0
var rear = 0
var counter = Int(readLine()!)!

for _ in 0..<counter {
    let input = readLine()!.split(separator: " ")
    
    switch input[0] {
    case "push":
        queue.insert(Int(input[1])!, at: rear)
        rear = rear + 1
    case "pop":
        if front == rear {
            print("-1")
        } else {
            print(queue[front])
            front = front + 1
        }
    case "size":
        print(rear - front)
    case "empty":
        if front == rear {
            print("1")
        } else {
            print("0")
        }
    case "front":
        if front == rear {
            print("-1")
        } else {
            print(queue[front])
        }
    default:
        if front == rear {
            print("-1")
        } else {
            print(queue[rear - 1])
        }
    }
    counter = counter - 1
}
