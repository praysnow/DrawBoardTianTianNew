//
//  TimeSTampExtension.swift
//  DrawBoardTianTianNew
//
//  Created by yang liu on 2019/12/17.
//  Copyright © 2019 Yang Liu. All rights reserved.
//

import UIKit

class TimeSTampExtension: NSObject {

}

extension Date {
    
    /// 获取当前 秒级 时间戳 - 10位
    var timeStamp : String {
        let timeInterval: TimeInterval = self.timeIntervalSince1970
        let timeStamp = Int(timeInterval)
        return "\(timeStamp)"
    }
    
    /// 获取当前 毫秒级 时间戳 - 13位
    var milliStamp : String {
        let timeInterval: TimeInterval = self.timeIntervalSince1970
        let millisecond = CLongLong(round(timeInterval*1000))
        return "\(millisecond)"
    }
}
