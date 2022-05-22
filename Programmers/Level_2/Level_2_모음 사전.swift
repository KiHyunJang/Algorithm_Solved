//
//  Level_2_모음 사전.swift
//  
//
//  Created by Ki Hyun on 2022/05/22.
//

import Foundation

// 재귀 함수를 이용해서 나올 수 있는 단어 모두 찾기
// 이후 sort()로 정렬 (기본이 사전 순임)
// 인덱스는 0 번째 부터 시작하므로 문제에서 원하는 값 배열에서 찾아서
// 인덱스 번호 + 1 값 출력

func make(_ n : Int, _ str : String) -> [String] {
    guard n > str.count else { return [str] }
    var result = [String]()
    let m : [String] = ["A","E","I","O","U"]
    
    for s in m {
        let str1 = str + s
        result.append(contentsOf: make(n,str1))
    }
    return result
}

func solution(_ word:String) -> Int {
    var arr = [String]()
    for n in 1...5 {
        for i in make(n,"") {
            arr.append(i)
        }
    }
    arr.sort()
    return arr.firstIndex(of: word)! + 1
}
