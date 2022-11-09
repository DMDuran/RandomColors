//
//  UIColor+Ext.swift
//  RandomColors
//
//  Created by Marco Duran on 11/8/22.
//

import UIKit

extension UIColor {
    
    //This function is going to create random colors that will return when called.
    //Static will let UIColor use this
    static func random() -> UIColor {
        
        //CGF.random is creating a random value from 0-1
        let randomColor = UIColor(red: CGFloat.random(in: 0...1),
                                  green: CGFloat.random(in: 0...1),
                                  blue: CGFloat.random(in: 0...1),
                                  alpha: 1)
        
        return randomColor
    }
}
