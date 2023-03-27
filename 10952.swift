//
//  10952.swift
//  AlgorithmStudy
//
//  Created by geee3 on 2023/03/27.
//

import Foundation

while (1 != 0) {
    let input = readLine()!.split(separator: " ")
    if Int(input[0])! == 0 && Int(input[1])! == 0 { break }
    
    print(Int(input[0])! + Int(input[1])!)
}
