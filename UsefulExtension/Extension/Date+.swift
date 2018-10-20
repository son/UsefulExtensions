//
//  Date+.swift
//  Adver4
//
//  Created by takeru on 2018/10/12.
//  Copyright © 2018 takeru. All rights reserved.
//

import Foundation

private let formatter: DateFormatter = {
    let formatter: DateFormatter = DateFormatter()
    formatter.timeZone = NSTimeZone.system
    formatter.locale = Locale(identifier: "en_US_POSIX")
    formatter.calendar = Calendar(identifier: .gregorian)
    return formatter
}()

public extension Date {

    func string(format: String = "yyyy-MM-dd'T'HH:mm:ssZ") -> String {
        formatter.dateFormat = format
        return formatter.string(from: self)
    }

    init?(dateString: String, dateFormat: String = "yyyy-MM-dd'T'HH:mm:ssZ") {
        formatter.dateFormat = dateFormat
        guard let date = formatter.date(from: dateString) else { return nil }
        self = date
    }
}
