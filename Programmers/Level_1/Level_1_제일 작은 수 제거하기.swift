//
//  Level_1_제일 작은 수 제거하기.swift
//  
//
//  Created by Ki Hyun on 2022/05/02.
//

import Foundation
func solution(_ arr:[Int]) -> [Int] {
    var arr = arr
    arr.remove(at: arr.firstIndex(of : arr.min()!)!)
    return arr.count==0 ? [-1] : arr
}
