//
//  Level_1_수박수박수박수박수박수?.swift
//  
//
//  Created by Ki Hyun on 2022/05/04.
//

import Foundation
func solution(_ n:Int) -> String {
    return String(repeating:"수박", count: n/2)+String(repeating:"수", count: n%2)
}
