//
//  Kakao2022_주차 요금 계산.swift
//  
//
//  Created by Ki Hyun on 2022/05/24.
//

// 기본 시간/ 기본 요금/ 단위 시간 / 단위 요금
// 배열의 길이 1000, 데이터 양식 HH:MM 차량번호 입출차
// 공백 기준으로 인덱스들을 나눈다.
// In일 경우 딕셔너리에 차량번호 : 입차시간 추가
// OUT일 경우 딕셔너리에서 차량번호를 찾아 요금 계산 후 지움 딕셔너리2에 차량번호 : 가격 추가
// 딕셔너리에 남아있는 차들은 출차 시간 23:59로 계산해서 딕셔너리 2에 차량번호 : 가격 추가
// 차량 번호 낮은 순으로 정렬한 배열로 만들어서 리턴

import Foundation

func timeConverter(_ time:String) -> Int {
    var result = 0
    let time2 = time.components(separatedBy: ":")
    result += Int(time2[0])! * 60
    result += Int(time2[1])!
    return result
}

func ParkingFeeCalculator(_ fees : [Int], _ time : Int) -> Int {
    var time = time
    var result = 0
    if fees[0] > time {
        return fees[1]
    }else{
        time -= fees[0]
        result += fees[1]
        while time > 0{
            time -= fees[2]
            result += fees[3]
        }
    }
    return result
}

func solution(_ fees:[Int], _ records:[String]) -> [Int] {
    var dict = [Int:Int]()
    var dict2 = [Int:Int]()
    var result = [Int]()
    
    for i in 0 ..< records.count{
        let data = records[i].components(separatedBy: " ")
        if data[2] == "IN" {
            dict[Int(data[1])!] = timeConverter(data[0])
        }else{
            if dict2[Int(data[1])!] == nil{
                dict2[Int(data[1])!] = timeConverter(data[0]) - dict[Int(data[1])!]!
                dict[Int(data[1])!] = nil
            }else{
                print(dict2[Int(data[1])!]!)
                dict2[Int(data[1])!]! += timeConverter(data[0]) - dict[Int(data[1])!]!
                print(dict2[Int(data[1])!]!)
                dict[Int(data[1])!] = nil
            }
        }
    }
    
    for (k,v) in dict{
        if dict2[k] == nil{
            dict2[k] = 1439 - v
        }else{
            dict2[k]! += 1439 - v
        }
    }
    
    let keySortedDict = dict2.sorted(by: {$0.0 < $1.0})
    
    for (k,v) in keySortedDict{
        result.append(ParkingFeeCalculator(fees,v))
    }
    return result
}
