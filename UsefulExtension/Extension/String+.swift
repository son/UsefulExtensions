//
//  String+.swift
//  Adver4
//
//  Created by takeru on 2018/09/20.
//  Copyright © 2018 takeru. All rights reserved.
//

import Foundation

extension String {

    func isValidTwitterID() -> Bool {
        let laxString = "^@[a-zA-Z0-9_]{1,15}$"
        let idPredicate = NSPredicate(format: "SELF MATCHES %@", laxString)
        return idPredicate.evaluate(with: self)
    }

    func isValidInstagramID() -> Bool {
        let laxString = "^@[a-zA-Z0-9_]{1,15}$"
        let idPredicate = NSPredicate(format: "SELF MATCHES %@", laxString)
        return idPredicate.evaluate(with: self)
    }
}
