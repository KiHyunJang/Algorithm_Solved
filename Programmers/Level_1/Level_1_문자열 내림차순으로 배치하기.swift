//
//  Level_1_문자열 내림차순으로 배치하기.swift
//  
//
//  Created by Ki Hyun on 2022/05/05.
//

import Foundation
func solution(_ s:String) -> String {
    let answer = String(s.sorted(by:>))
    return answer
}
