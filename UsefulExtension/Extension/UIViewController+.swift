//
//  UIViewController+.swift
//  UsefulExtension
//
//  Created by takeru on 2018/10/31.
//  Copyright © 2018 takeru. All rights reserved.
//

import UIKit

extension UIViewController {

    func setSwipeBack() {
        let target = self.navigationController?.value(forKey: "_cachedInteractionController")
        let recognizer = UIPanGestureRecognizer(target: target, action: Selector(("handleNavigationTransition:")))
        self.view.addGestureRecognizer(recognizer)
    }
}
