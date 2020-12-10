//
//  File.swift
//  
//
//  Created by sabrina on 2020/12/10.
//

import Foundation

public extension Date {
    func toString(dateFormat:String) -> String {
        let df = DateFormatter()
        df.dateFormat = dateFormat
        df.timeZone = TimeZone.current
        let str = df.string(from: self)
        return str
    }
}
