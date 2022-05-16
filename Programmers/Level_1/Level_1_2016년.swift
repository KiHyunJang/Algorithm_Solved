//
//  Level_1_2016년.swift
//  
//
//  Created by Ki Hyun on 2022/05/16.
//

import Foundation
func solution(_ a:Int, _ b:Int) -> String {
    let month = [0,31,29,31,30,31,30,31,31,30,31,30,31]
    let week = ["THU","FRI","SAT","SUN","MON","TUE","WED"]
    return week[(month[0..<a].reduce(0, +) + b)%7]
}
