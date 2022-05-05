//
//  Level_1_문자열 내 마음대로 정렬하기.swift
//  
//
//  Created by Ki Hyun on 2022/05/05.
//

import Foundation
func solution(_ strings:[String], _ n:Int) -> [String] {
    let answer = strings.sorted{ Array($0)[n] == Array($1)[n] ? $0 < $1 : Array($0)[n] < Array($1)[n] }
    return answer
}
