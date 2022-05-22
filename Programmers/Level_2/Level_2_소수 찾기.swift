//
//  Level_2_소수 찾기.swift
//  
//
//  Created by Ki Hyun on 2022/05/22.
//

import Foundation

func isPrime(_ n : Int) -> Bool {
    guard n > 1 else { return false}
    let range = Int(sqrt(Double(n))) + 1
    for i in 2 ..< range {
        if n % i == 0 {
            return false
        }
    }
    return true
}

func make(_ n : Int, _ str : String, _ m : [String]) -> [String] {
    guard n > str.count else { return [str] }
    var result = [String]()
    
    for s in 0 ..< m.count {
        let str1 = str + m[s]
        var m1 = m
        m1.remove(at: s)
        result.append(contentsOf: make(n, str1, m1))
    }
    return result
}


func solution(_ numbers:String) -> Int {
    var arr = [Int]()
    for n in 1...numbers.count {
        for i in make(n,"",numbers.map{String($0)}) {
            arr.append(Int(i)!)
        }
    }
    let arr2 = Set(arr)
    arr = Array(arr2)
    var count = 0
    
    for i in arr{
       if isPrime(i) { count += 1 }
    }
    return count
}
