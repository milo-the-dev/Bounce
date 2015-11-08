//
//  JSONConverter.swift
//  Bounce
//
//  Created by Marlow Charite on 11/8/15.
//  Copyright © 2015 Marlow Charite. All rights reserved.
//

import SwiftyJSON

class JSONConverter {

    static func convert(data: NSData) -> JSON {
        return JSON(data: data)
    }

}