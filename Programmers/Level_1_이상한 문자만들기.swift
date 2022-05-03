//
//  Level_1_이상한 문자만들기.swift
//  
//
//  Created by Ki Hyun on 2022/05/03.
//

import Foundation
func solution(_ s:String) -> String {
    let s1 = s.components(separatedBy:" ").map { $0.enumerated().map { $0.offset % 2 == 0 ? $0.element.uppercased() : $0.element.lowercased() } }
    return s1.map{$0.joined()}.joined(separator: " ")
}
