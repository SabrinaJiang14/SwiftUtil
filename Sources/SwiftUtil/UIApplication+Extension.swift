//
//  File.swift
//  
//
//  Created by sabrina on 2020/12/10.
//

import UIKit

public extension UIApplication {
    static var appVersion: String? {
        return Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString") as? String
    }
    
    static var buildNumber: String? {
        return Bundle.main.object(forInfoDictionaryKey: "CFBundleVersion") as? String
    }
    
    class func getTopViewController(windows: [UIWindow] = UIApplication.shared.windows) -> UIViewController? {
        
        let base : UIViewController? = windows.first(where: \.isKeyWindow)?.rootViewController
        if let nav = base as? UINavigationController {
            return nav
            
        } else if let tab = base as? UITabBarController, let selected = tab.selectedViewController {
            return selected
            
        } else if let presented = base?.presentedViewController {
            return presented
            
        }
        return base
    }
}
