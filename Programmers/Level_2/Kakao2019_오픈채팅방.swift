//
//  Kakao2019_오픈채팅방.swift
//  
//
//  Created by Ki Hyun on 2022/05/26.
//

// 10만개의 String가 배열에 있음.
// 유저 아이디로 구분
// enter 입장, Leave 퇴장, Change 변경

import Foundation

func solution(_ record:[String]) -> [String] {
    var result = [String]()
    var id = [String: String]()
    
    for rcd in record{
        let a = rcd.components(separatedBy : " ")
        if a[0] != "Leave"{
            id[a[1]] = a[2]
        }
    }
    
    for rcd in record{
        let a = rcd.components(separatedBy : " ")
        if a[0] == "Enter"{
            result.append("\(id[a[1]]!)님이 들어왔습니다.")
        }else if a[0] == "Leave"{
            result.append("\(id[a[1]]!)님이 나갔습니다.")
        }
    }
    return result
}
