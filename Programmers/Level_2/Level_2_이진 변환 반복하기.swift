//
//  Level_2_이진 변환 반복하기.swift
//  
//
//  Created by Ki Hyun on 2022/05/22.
//

import Foundation

// 이진법 문자열의 0을 모두 제거
// 제거된 0 계산
// 문자열의 길이를 c라고 가정하고 2진법으로 표현한 문자열로 바꿈
// "1"이 될 때 까지 반복

func solution(_ s:String) -> [Int] {
    var zero = 0
    var cnt = 0
    var str = s
    while str != "1" {
        cnt += 1
        zero += str.replacingOccurrences(of: "1", with: "").count
        str = String(str.replacingOccurrences(of: "0", with: "").count, radix: 2)
    }
    return [cnt, zero]
}
