//
//  Level_1_문자열 내 p와 y의 개수.swift
//  
//
//  Created by Ki Hyun on 2022/05/05.
//

import Foundation
func solution(_ s:String) -> Bool{
    let str = s.lowercased()
    let answer = str.components(separatedBy: "p").count == str.components(separatedBy: "y").count ? true : false
    return answer
}
