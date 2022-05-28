//
//  Level_2_큰 수 만들기.swift
//  
//
//  Created by Ki Hyun on 2022/05/28.
//

import Foundation

func solution(_ number:String, _ k:Int) -> String {
    var k : Int = k
    var stack = [String]()
    var number = number.map { String($0) }
    stack.append(number[0])
    
    for i in 1 ..< number.count{
        while stack.count > 0 && k != 0 && Int(number[i])! > Int(stack.last!)! {
            stack.popLast()
            k -= 1
        }
        stack.append(number[i])
    }
    
    for _ in 0 ..< k{
        stack.popLast()
    }
    
    return stack.joined(separator: "")
}
