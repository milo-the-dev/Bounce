import SwiftyJSON

class JSONConverter {

    static func convert(data: NSData) -> JSON {
        return JSON(data: data)
    }

}