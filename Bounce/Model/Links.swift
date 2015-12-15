import Foundation
import SwiftyJSON

class Links {

    private (set) var web: String?
    private (set) var twitter: String?

    init(web: String?, twitter: String?) {
        self.web = web
        self.twitter = twitter
    }
}

extension Links: JSONParceable {
    class func from(json: JSON) -> Links {
        return Links(
            web: json["web"].string,
            twitter: json["twitter"].string)
    }
}