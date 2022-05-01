//
//  Level_1_핸드폰 번호 가리기.swift
//  
//
//  Created by Ki Hyun on 2022/05/01.
//

import Foundation
func solution(_ phone_number:String) -> String {
    return String(repeating:"*", count: phone_number.count - 4) + phone_number.suffix(4)
}
