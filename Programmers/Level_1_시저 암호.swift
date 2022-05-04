//
//  Level_1_시저 암호.swift
//  
//
//  Created by Ki Hyun on 2022/05/04.
//

import Foundation
func ascii(_ char:Character,_ n:Int) -> String {
    var num = Int(char.asciiValue!)
    var num2 = num > 96 ? ((num-97+n)%26)+97 : ((num-65+n)%26)+65
    return String(UnicodeScalar(UInt8(num2)))
}

func solution(_ s:String, _ n:Int) -> String {
    var result : [String] = []
    for i in 0..<s.count {
        let s1 = s[s.index(s.startIndex, offsetBy: i)]
        if s1 == " " {
            result.append(String(s1))
        }else{
            result.append(ascii(s1,n))
        }
    }
    return result.joined()
}
