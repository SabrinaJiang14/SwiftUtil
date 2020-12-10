//
//  File.swift
//  
//
//  Created by sabrina on 2020/12/10.
//

import Foundation

public let kAppVersion          = Bundle.main.infoDictionary! ["CFBundleShortVersionString"] as! String

public enum Log {
    static public func debug<T>(_ message:T, file:String = #file, function:String = #function, line:Int = #line) {
        let fileName = (file as NSString).lastPathComponent
        print("\n🐞 [DEBUG] [\(fileName)][\(function)][\(line)] : \(message)")
    }
    
    static public func info<T>(_ message:T, file:String = #file, function:String = #function, line:Int = #line) {
        let fileName = (file as NSString).lastPathComponent
        print("\n✅ [INFO] [\(fileName)][\(function)][\(line)] : \(message)")
    }
    
    static public func error<T>(_ message:T, file:String = #file, function:String = #function, line:Int = #line) {
        let fileName = (file as NSString).lastPathComponent
        print("\n‼️ [ERROR] [\(fileName)][\(function)][\(line)] : \(message)")
    }
    
    static public func warning<T>(_ message:T, file:String = #file, function:String = #function, line:Int = #line) {
        let fileName = (file as NSString).lastPathComponent
        print("\n⚠️ [WARNING] [\(fileName)][\(function)][\(line)] : \(message)")
    }
}
