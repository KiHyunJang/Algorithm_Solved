//
//  Level_2_JadenCase 문자열 만들기.swift
//  
//
//  Created by Ki Hyun on 2022/05/22.
//

import Foundation

func solution(_ s:String) -> String {
    let strs = s.lowercased()
    var result = ""
    var current = 0
    for str in strs {
        if str != " " {
            if Int(String(str)) == nil && current == 0 {
                result += String(str).uppercased()
                current += 1
                continue
            }
        }else {
            current = 0
            result += String(str)
            continue
        }
        result += String(str)
        current += 1
    }
    return result
}
