//
//  UIAlertController+.swift
//  UsefulExtension
//
//  Created by takeru on 2018/10/20.
//  Copyright © 2018 takeru. All rights reserved.
//

import UIKit

extension UIAlertController {

    class func simpleAlert(title: String, message: String, positiveOption: String = "OK", handler: ((UIAlertAction?) -> Void)?) {
        let alert = self.init(title: title, message: message, preferredStyle: .alert)
        let positiveAction = UIAlertAction(title: positiveOption, style: .default, handler: handler)
        alert.addAction(positiveAction)
        guard let topViewController = UIApplication.shared.topViewController else { return }
        let viewController = topViewController
        viewController.present(alert, animated: true, completion: nil)
    }

    class func twoOptionsAlert(title: String, message: String, positive: String = "OK", cancel: String = "キャンセル", handlerPositive: ((UIAlertAction?) -> Void)?, handlerCancel: ((UIAlertAction?) -> Void)?) {
        let alert = self.init(title: title, message: message, preferredStyle: .alert)
        let positeveAction = UIAlertAction(title: positive, style: .default, handler: handlerPositive)
        let cancelAction = UIAlertAction(title: cancel, style: .cancel, handler: handlerCancel)
        alert.addAction(positeveAction)
        alert.addAction(cancelAction)
        guard let topViewController = UIApplication.shared.topViewController else { return }
        let viewController = topViewController
        viewController.present(alert, animated: true, completion: nil)
    }
}
