//
//  Level_2_영어 끝말잇기.swift
//  
//
//  Created by Ki Hyun on 2022/05/24.
//

import Foundation

func wrongPerson(_ n:Int, _ person:Int) -> [Int]{
    let n = n+1
    if n % person == 0{ return [person, n/person] }
    return [n % person, n / person + 1]
}

func solution(_ n:Int, _ words:[String]) -> [Int] {
    var said = [String]()
    var a = words[0].suffix(1)
    said.append(words[0])
    
    for c in 1 ..< words.count{
        if a != words[c].prefix(1){
            return wrongPerson(c,n)
        }else if said.contains(words[c]){
            return wrongPerson(c,n)
        }
        a = words[c].suffix(1)
        said.append(words[c])
    }
    return [0,0]
}
