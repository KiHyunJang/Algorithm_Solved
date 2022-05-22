//
//  Level_2_최댓값과 최솟값.swift
//  
//
//  Created by Ki Hyun on 2022/05/22.
//

import Foundation

// 공백단위로 구분하고 리턴받은 배열을 정렬
// 첫 번째 인덱스 값과 마지막 인덱스 값 공백으로 구분해서
// 문자열로 만들어서 리턴

func solution(_ s:String) -> String {
    var a = s.components(separatedBy: " ").map{Int($0)!}.sorted(by : <)
    return [String(a.first!), String(a.last!)].joined(separator: " ")
}
