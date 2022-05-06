//
//  Kakao2018_1차_다트게임.swift
//  
//
//  Created by Ki Hyun on 2022/05/06.
//

import Foundation
// S D T 는 제곱
// *은 해당 점수와 이전 점수 곱하기 2 (첫 번째이면 자기 자신만)
// #은 해당 점수 -
// 반복문 범위 0부터 문자열 카운트-1, 다음 인덱스가 숫자라면

func solution(_ dartResult:String) -> Int {
    let dartResult2 = (dartResult + "0").map{String($0)}
    var answer = [Int]()
    var current = 0
    for i in 0 ..< dartResult.count {
        if Int(dartResult2[i]) != nil{
            if current == 1 && dartResult2[i] == "0"{
                current = 10
            }else{
                current = Int(dartResult2[i])!
            }
        }else {
            if dartResult2[i] == "D" {
                current = current*current
            }else if dartResult2[i] == "T"{
                current = current*current*current
            }else if dartResult2[i] == "#"{
                current = current*(-1)
            }else if dartResult2[i] == "*"{
                current = current*2
                if answer.count != 0 {
                    answer[(answer.count)-1] = answer[(answer.count)-1] * 2
                }
            }
        }
        if Int(dartResult2[i]) == nil && Int(dartResult2[i+1]) != nil {
            answer.append(current)
            current = 0
        }
    }
    return answer.reduce(0,+)
}
