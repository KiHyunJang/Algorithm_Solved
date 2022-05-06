//
//  Level_1_가운데 글자 가져오기 .swift
//  
//
//  Created by Ki Hyun on 2022/05/06.
//

import Foundation
func solution(_ s:String) -> String {
    var answer = s.count % 2 == 0 ? String(s[s.index(s.startIndex, offsetBy: (s.count/2)-1)]) + String(s[s.index(s.startIndex, offsetBy: s.count/2)]) : String(s[s.index(s.startIndex, offsetBy: s.count/2)])
    return answer
}
