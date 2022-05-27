//
//  Level_2_조이스틱.swift
//  
//
//  Created by Ki Hyun on 2022/05/27.
//

import Foundation

func solution(_ name:String) -> Int {
    let dic = ["A":0, "B":1, "C":2, "D":3, "E":4, "F":5, "G":6, "H":7, "I":8, "J":9, "K":10, "L":11, "M":12,"N":13,"O":12,"P":11,"Q":10,"R":9,"S":8,"T":7,"U":6,"V":5,"W":4,"X":3,"Y":2,"Z":1]
    
    var name2 = name.map{dic[String($0)]!}
    var minMove = name.count - 1
    
    while name2[minMove] == 0 && minMove != 0 {
        minMove -= 1
    }
    
    for i in 0 ..< name2.count - 1 {
        var next = i + 1
        while next < name2.count && name2[next] == 0 {
            next += 1
        minMove = min(i * 2 + name2.count - next, minMove)
        }
    }
    
    name2.reverse()
    for i in 0 ..< name.count - 1 {
        var next = i + 1
        while next < name2.count && name2[next] == 0 {
            next += 1
        minMove = min(i * 2 + name2.count - next + 1, minMove)
        }
    }
    return name2.reduce(0,+) + minMove
}
