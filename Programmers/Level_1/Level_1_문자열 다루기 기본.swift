//
//  Level_1_문자열 다루기 기본.swift
//  
//
//  Created by Ki Hyun on 2022/05/05.
//

import Foundation
func solution(_ s:String) -> Bool {
    guard s.count == 4 || s.count == 6 else { return false }
    let a = Int(s) == nil ? false : true
    return a
}
