//
//  File.swift
//  
//
//  Created by sabrina on 2020/12/10.
//

import UIKit
import GameKit

public extension UIColor {
    var random:UIColor {
        let shuffledDistribution = GKShuffledDistribution(lowestValue: 10, highestValue: 137)
        let num:CGFloat = CGFloat(Double(shuffledDistribution.nextInt()) / 255.0)
        let num2:CGFloat = CGFloat(Double(shuffledDistribution.nextInt()) / 255.0)
        let num3:CGFloat = CGFloat(Double(shuffledDistribution.nextInt()) / 255.0)
        
        let newColor = UIColor(red: num, green: num2, blue: num3, alpha: 1)
        return newColor
    }
}
