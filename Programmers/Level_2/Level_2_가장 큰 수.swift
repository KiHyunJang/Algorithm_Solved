//
//  Level_2_가장 큰 수.swift
//  
//
//  Created by Ki Hyun on 2022/05/22.
//

import Foundation

// 배열의 요소들을 문자열로 바꾸어 요소들 *3을 기준으로 정렬 후
// 요소들을 합쳐서 문자열로 만듬
// 전부 0 일경우에는 "00000" 이런식으로 출력될 수 있으니 예외 처리

func strMt(_ s : String, _ n : Int) -> String{
    var result = s
    for _ in 0 ..< n {
        result += s
    }
    return result
}

func solution(_ numbers:[Int]) -> String {
    var result = numbers
    if result.filter{$0 == 0}.count == result.count {
        return "0"
    }
    let result2 = result.map{String($0)}.sorted{strMt($0,3) > strMt($1,3)}.joined(separator: "")
    return result2
}
