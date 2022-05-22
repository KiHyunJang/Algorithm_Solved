//
//  Kakao2018_캐시.swift
//  
//
//  Created by Ki Hyun on 2022/05/22.
//

import Foundation

// cacheSize만큼 담을 배열 생성
// 만약 배열이 비었다면 +5 하고 append
// else if 배열이 캐시 사이즈랑 같다면
// 배열안에 현재 데이터랑 일치하는게 있다면 지우고 맨뒤에 추가하고 +1
// 만약 없다면 맨 앞 지우고 맨 뒤에 추가 +5
// else 배열안에 현재 데이터랑 일치하는게 있다면 지우고 맨뒤에 추가하고 +1
// 없다면 맨 뒤에 추가 +5

func solution(_ cacheSize:Int, _ cities:[String]) -> Int {
    var cache = [String]()
    var result = 0
    if cacheSize != 0{
        for i in 0 ..< cities.count {
            let current = cities[i].lowercased()
            if cache.isEmpty{
                result += 5
                cache.append(current)
            }else if cache.count == cacheSize{
                if let v = cache.firstIndex(of: current){
                    cache.remove(at: v)
                    cache.append(current)
                    result += 1
                }else{
                    cache.remove(at: 0)
                    cache.append(current)
                    result += 5
                }
            }else{
                if let v = cache.firstIndex(of: current){
                    cache.remove(at: v)
                    cache.append(current)
                    result += 1
                }else{
                    cache.append(current)
                    result += 5
                }
            }
        }
        return result
    }
    return cities.count * 5
}
