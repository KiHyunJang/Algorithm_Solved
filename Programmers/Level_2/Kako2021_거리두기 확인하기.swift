//
//  Kako2021_거리두기 확인하기.swift
//  
//
//  Created by Ki Hyun on 2022/05/22.
//

import Foundation

func check(_ value : Character, _ arr : [Character]) -> Int {
    if value == "P"{
        if arr.filter{$0 == "P"}.count >= 1 { return 0 }
    }else if value == "O"{
        if arr.filter{$0 == "P"}.count >= 2 { return 0 }
    }
    return 1
}

func solution(_ places:[[String]]) -> [Int] {
    var result = [1,1,1,1,1]
    let dx = [0,0,-1,1]
    let dy = [-1,1,0,0]
    for i in 0...4 {
        for y in 0...4{
            let s = places[i][y]
            for x in 0...4{
                let current = s[s.index(s.startIndex, offsetBy: x)]
                var around = [Character]()
                for d in 0...3{
                    let (nx,ny) = (x+dx[d],y+dy[d])
                    if (0...4).contains(nx) && (0...4).contains(ny){
                        let a = places[i][ny]
                        around.append(a[a.index(a.startIndex, offsetBy: nx)])
                    }
                }
                if check(current,around) == 0{
                    result[i] = 0
                }
            }
        }
    }
    return result
}
