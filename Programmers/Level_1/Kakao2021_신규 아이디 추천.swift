//
//  Kakao2021_신규 아이디 추천.swift
//  
//
//  Created by Ki Hyun on 2022/05/16.
//

// 12:40 - 1:37
// 모든 대문자 -> 소문자
// 알파벳,숫자,-,_,.를 제외한 모든 문자 제거
// .이 2번이상 연속되면 . 으로 치환
// 빈 문자열이라면 a를 대입
// 길이가 16자 이상이면 15자만 남기고 뒤에 제거 후 맨 뒤가 .이면 제거
// 2자 이하라면 마지막 문자를 길이3이 될 때까지 반복에서 끝에 추가

import Foundation

func solution(_ new_id:String) -> String {
    var id = new_id
    id = id.lowercased()
    id = id.getArrayAfterRegex(regex: "[0-9a-z\\-\\_\\.]").map{String($0)}.joined(separator:"")
    while id.contains("..") {
        id = id.replacingOccurrences(of: "..", with: ".")
    }
    id = id.trimmingCharacters(in: ["."])
    id = id.count == 0 ? "a" : id
    id = String(id.prefix(15))
    id = id[id.index(before: id.endIndex)] == "." ? String(id.prefix(id.count - 1)) : id
    while id.count < 3 {
        id += String(id[id.index(before: id.endIndex)])
    }
    return id
}

extension String{
    func getArrayAfterRegex(regex: String) -> [String] {
        
        do {
            let regex = try NSRegularExpression(pattern: regex)
            let results = regex.matches(in: self,
                                        range: NSRange(self.startIndex..., in: self))
            return results.map {
                String(self[Range($0.range, in: self)!])
            }
        } catch let error {
            print("invalid regex: \(error.localizedDescription)")
            return []
        }
    }
}
