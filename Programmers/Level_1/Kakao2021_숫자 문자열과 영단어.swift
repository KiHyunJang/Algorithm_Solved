//
//  Kakao2021_숫자 문자열과 영단어.swift
//  
//
//  Created by Ki Hyun on 2022/05/16.
//

// 2 : 03 - 2:08
import Foundation

func solution(_ s:String) -> Int {
    var arr = ["zero","one","two","three","four","five","six","seven","eight","nine"]
    var str = s
    for i in 0...9 {
        str = str.replacingOccurrences(of: "\(arr[i])", with: "\(i)")
    }
    return Int(str)!
}
