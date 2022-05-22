//
//  Level_2_예상 대진표.swift
//  
//
//  Created by Ki Hyun on 2022/05/22.
//

import Foundation

// n은 2의 지수 승으로 주어짐
// 1번과 2번이 겨루고 이긴 번호가 1번을 부여받음.
// 항상 이긴다고 가정 시 A, B 번째 참가자가 언제 만나는지.
// 위 가정으로 알 수 있는 것은
// 배열로 1번말고 0번으로 시작할 경우 (현재 번호+1)/2이 다음 번호임

func solution(_ n:Int, _ a:Int, _ b:Int) -> Int {
    var answer = 0
    var A = b
    var B = a
    while A != B{
        A = (A+1)/2
        B = (B+1)/2
        answer += 1
    }
    return answer
}
