//
//  DateFormatter.swift
//  Bounce
//
//  Created by Marlow Charite on 12/13/15.
//  Copyright © 2015 Marlow Charite. All rights reserved.
//

import Foundation

struct DateFormatter {
    static func dateFromString(dateString: String, withFormat format: String = "") -> NSDate {
        let dateFormatter = NSDateFormatter()
        dateFormatter.dateFormat = format
        return dateFormatter.dateFromString(dateString)!
    }
}
