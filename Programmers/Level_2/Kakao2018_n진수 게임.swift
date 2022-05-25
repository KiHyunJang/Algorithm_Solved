//
//  Kakao2018_n진수 게임.swift
//  
//
//  Created by Ki Hyun on 2022/05/25.
//

// n진법, t미리 구할 숫자 개수, m 게임 참가 인원, p 내 순서
// 문자열의 길이가 (t+1)*m 개보다 커질 때까지 숫자를 구해 str에 더해줌
// p-1 부터 m씩 증가하며 반복문을 통해 해당 인덱스를 뽑아와서 reuslt에 더해줌
import Foundation

func solution(_ n:Int, _ t:Int, _ m:Int, _ p:Int) -> String {
    var str = [String]()
    var num = 0
    
    while str.count < t * m{
        str += String(num, radix: n).map { String($0) }
        num += 1
    }

    return stride(from: p - 1, to: t*m, by: m).reduce("", { $0 + str[$1].uppercased() })
}
