//
//  Storyboard+.swift
//  Adver4
//
//  Created by takeru on 2018/09/01.
//  Copyright © 2018年 takeru. All rights reserved.
//

import UIKit

protocol StoryBoardInstantiatable {}
extension UIViewController: StoryBoardInstantiatable {}

extension StoryBoardInstantiatable where Self: UIViewController {

    static func instantiate() -> Self {
        var className = String(describing: type(of: self))
        if let range = className.range(of: ".Type") {
            className.removeSubrange(range)
        }
        let storyboard = UIStoryboard(name: className, bundle: nil)
        return storyboard.instantiateViewController(withIdentifier: className) as! Self
    }

    static func instantiate(withStoryboard storyboard: String) -> Self {
        var className = String(describing: type(of: self))
        if let range = className.range(of: ".Type") {
            className.removeSubrange(range)
        }
        let storyboard = UIStoryboard(name: storyboard, bundle: nil)
        return storyboard.instantiateViewController(withIdentifier: className) as! Self
    }
}
