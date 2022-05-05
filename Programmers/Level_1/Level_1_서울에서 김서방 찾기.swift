//
//  Level_1_서울에서 김서방 찾기.swift
//  
//
//  Created by Ki Hyun on 2022/05/05.
//

import Foundation
func solution(_ seoul:[String]) -> String {
    for i in 0..<seoul.count{
        if seoul[i] == "Kim" {
            return "김서방은 \(i)에 있다"
        }
    }
    return ""
}
