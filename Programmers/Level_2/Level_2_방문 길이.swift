//
//  Level_2_방문 길이.swift
//  
//
//  Created by Ki Hyun on 2022/05/26.
//

// 현재위치 = 현재위치 + 명령어(LRUD)
// 유효성 검사
// (현재위치, 이전위치),(이전위치, 현재위치) recode에 추가
// recode의 원소개수 / 2

import Foundation

func solution(_ dirs:String) -> Int {
    var recode = [String]()
    let dirs = dirs.map { String($0) }
    print(dirs)
    
    var x : Int = 0
    var y : Int = 0
    
    for i in dirs{
        var dx = x
        var dy = y
        if i == "U"{
            dy += 1
        }else if i == "D"{
            dy -= 1
        }else if i == "L"{
            dx -= 1
        }else{
            dx += 1
        }
        if -5 <= dx && dx <= 5 && -5 <= dy && dy <= 5 {
            let a = String(dx)+String(dy) + String(x)+String(y)
            let b = String(x)+String(y) + String(dx)+String(dy)
            if recode.contains(a) == false && recode.contains(b) == false{
                recode.append(a)
                recode.append(b)
            }
            x = dx
            y = dy
        }
    }
    
    return recode.count/2
}
