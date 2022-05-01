//
//  File.swift
//  
//
//  Created by Ki Hyun on 2022/05/01.
//

import Foundation

let n = readLine()!.components(separatedBy: [" "]).map { Int($0)! }
let (a, b) = (n[0], n[1])

print(a + b)
