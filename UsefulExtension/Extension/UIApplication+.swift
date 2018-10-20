//
//  UIApplication+.swift
//  Adver4
//
//  Created by takeru on 2018/10/11.
//  Copyright © 2018 takeru. All rights reserved.
//

import UIKit

public extension UIApplication {
    
    public var topViewController: UIViewController? {
        guard var topViewController = UIApplication.shared.keyWindow?.rootViewController else { return nil }

        while let presentedViewController = topViewController.presentedViewController {
            topViewController = presentedViewController
        }
        return topViewController
    }

    public var topNavigationController: UINavigationController? {
        return topViewController as? UINavigationController
    }
}
