//
//  Array+.swift
//  Adver4
//
//  Created by takeru on 2018/10/12.
//  Copyright © 2018 takeru. All rights reserved.
//

import Foundation

extension Array {
    mutating func removeObject<T>(obj: T) where T: Equatable {
        self = self.filter { $0 as? T != obj }
    }

    subscript (safe index: Index) -> Element? {
        return indices.contains(index) ? self[index] : nil
    }
}
