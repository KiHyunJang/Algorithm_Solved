//
//  Level_2_N개의 최소공배수.swift
//  
//
//  Created by Ki Hyun on 2022/05/22.
//

import Foundation

// 최대공약수 : (a가 더크다는 가정)재귀적으로 a%b==0이될 때까지 a%b ,a 수행
// 최소공배수 : a*b / 두 수의 최대 공약수
// arr내에 배열의 요소가 1개 남을 때까지 높은 수부터
// 두 수를 꺼내서 두수의 최소공배수 찾고 넣고를 반복.
// a가 더 크다는 가정을 했기 때문에 오름차순 정렬

func gcd(_ a: Int, _ b: Int) -> Int {
    guard a % b != 0 else { return b }
    return gcd(b,a%b)
}

func lcm(_ a: Int, _ b: Int) -> Int {
    let c = a*b
    return c/gcd(a,b)
}

func solution(_ arr:[Int]) -> Int {
    var arr1 = arr.sorted()
    while arr1.count != 1{
        let a = arr1.popLast()!
        let b = arr1.popLast()!
        arr1.append(lcm(a, b))
    }
    return arr1[0]
}
