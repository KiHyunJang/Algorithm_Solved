//
//  Level_2_짝지어 제거하기.swift
//  
//
//  Created by Ki Hyun on 2022/05/22.
//

import Foundation

func solution(_ s:String) -> Int{
    var stack = [Character]()
    for ch in s{
        if stack.isEmpty {
            stack.append(ch)
        }else if stack.last! == ch {
            stack.popLast()
        }else {
            stack.append(ch)
        }
    }
    return stack.isEmpty ? 1 : 0
}
