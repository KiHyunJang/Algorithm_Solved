//
//  Kakao2020_문자열 압축.swift
//  
//
//  Created by Ki Hyun on 2022/05/23.
//

func cut(_ s: String, _ length: Int) -> Int {
    var arr: [String] = [], result: [String] = []
    var cnt = 0, rem = 0, wordCnt = 0
    var word = ""
    
    if s.count % length == 0 {
        cnt = s.count / length
    } else {
        cnt = s.count / length
        rem = s.count % length
    }

    var firstIndex = s.index(s.startIndex, offsetBy: 0)
    var lastIndex = s.index(s.startIndex, offsetBy: 0)

    for _ in 0..<cnt {
        lastIndex = s.index(lastIndex, offsetBy: length)
        arr.append(String(s[firstIndex..<lastIndex]))
        firstIndex = lastIndex
    }
    
    for i in 0..<arr.count {
        if word == "" {
            word = arr[i]
            wordCnt += 1
        } else {
            if word == arr[i] {
                wordCnt += 1
            } else {
                if wordCnt == 1 {
                    result.append("\(word)")
                } else {
                    result.append("\(wordCnt)\(word)")
                }
                word = arr[i]
                wordCnt = 1
            }
        }
    }
    if wordCnt == 1 {
        result.append("\(word)")
    } else {
        result.append("\(wordCnt)\(word)")
    }
    
    return result.joined().count + rem
}

func solution(_ s:String) -> Int {
    let count = s.count / 2
    var minArr: [Int] = []
    
    if s.count == 1 { return 1}
    
    for i in 1...count {
        let minValue = cut(s, i)
        minArr.append(minValue)
    }
    
    return minArr.min()!
}
