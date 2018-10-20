//
//  UIColor+.swift
//  Adver4
//
//  Created by takeru on 2018/09/02.
//  Copyright © 2018年 takeru. All rights reserved.
//

import UIKit

extension UIColor {

    convenience init(r: CGFloat, g: CGFloat, b: CGFloat, a: CGFloat) {
        self.init(red: r / 255, green: g / 255, blue: b / 255, alpha: a)
    }

    static var somethingBlue: UIColor {
        return UIColor(r: 0, g: 122, b: 255, a: 1)
    }
}
