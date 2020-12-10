//
//  File.swift
//  
//
//  Created by sabrina on 2020/12/10.
//

import Foundation

public extension Int {
    func toDouble() -> Double { Double(self) }
    func toFloat() -> Float { Float(self) }
    func toString() -> String { String(self) }
}

public extension Double {
    func toInt() -> Int { Int(self) }
    func toFloat() -> Float { Float(self)}
    func toString() -> String { String(self) }
}

public extension Float {
    
    var cleanZero : String {
        let valueInt = Int(self * 10000)
        if self.truncatingRemainder(dividingBy: 1.0) == 0 {
            return String(format: "%.0f", self)
        } else if valueInt % 1000 == 0 {
            return String(format: "%.1f", Float(valueInt)/10000.0)
        }else if valueInt % 100 == 0 {
            return String(format: "%.2f", Float(valueInt)/10000.0)
        }else if valueInt % 10 == 0 {
            return String(format: "%.3f", Float(valueInt)/10000.0)
        }else{
            return String(format: "%.4f", Float(valueInt)/10000.0)
        }
    }
    
    func cleanZero(digital:Int = 2) -> String {
        let strs = self.cleanZero.components(separatedBy: ".")
        if strs.count > 1, digital <= 4 {
            let twoDigital = strs[1]
            if twoDigital.count > digital {
                let end = twoDigital.index(twoDigital.startIndex, offsetBy: digital)
                return String(format: "%@.%@", strs[0],String(twoDigital[twoDigital.startIndex..<end]))
            }
        }
        return self.cleanZero
    }
}
