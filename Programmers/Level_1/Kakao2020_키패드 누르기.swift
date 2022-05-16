//
//  Kakao2020_키패드 누르기.swift
//  
//
//  Created by Ki Hyun on 2022/05/16.
//

// 1 : 31 - 2: 01
// *은 10, 0은 11, #은12로 할당해주고,
// 현재 각자 손의 위치를 변수로 선언
// 1,4,7은 무조건 l이누르고
// 3,6,9는 무조건 R이누르게 한 다음,
// 나머지 2580은 거리측정해서
// 거리는 (현재 손위치- 가야하는 숫자)의 절대값을 3으로 나눈 몫과 나머지의 합
// 가야하는 수가 0 이라면 11로 계산
import Foundation

func solution(_ numbers:[Int], _ hand:String) -> String {
    var result = ""
    var lHand = 10
    var rHand = 12
    var numbers2 = numbers
    numbers2.indices.filter{numbers2[$0] == 0}.forEach{numbers2[$0] = 11}
    
    for num in numbers2 {
        if num == 1 || num == 4 || num == 7 {
            result += "L"
            lHand = num
        }else if num == 3 || num == 6 || num == 9 {
            result += "R"
            rHand = num
        }else{
            let leftValue = (abs(lHand - num) / 3) + (abs(lHand - num) % 3)
            let rightValue = (abs(rHand - num) / 3) + (abs(rHand - num) % 3)
            if leftValue > rightValue {
                result += "R"
                rHand = num
            }else if leftValue < rightValue {
                result += "L"
                lHand = num
            }else {
                if hand == "left" {
                    result += "L"
                    lHand = num
                }else {
                    result += "R"
                    rHand = num
                }
            }
        }
    }
    return result
}
