import Foundation
import SwiftyJSON

class Images {
    private (set) var normal: String
    private (set) var teaser: String
    private (set) var hidpi: String?

    init(normal: String, teaser: String, hidpi: String? = nil) {
        self.normal = normal
        self.teaser = teaser
        self.hidpi = hidpi;
    }
}

extension Images: JSONParceable {
    class func from(json: JSON) -> Images {
        return Images(
            normal: json["normal"].stringValue,
            teaser: json["teaser"].stringValue,
            hidpi: json["hidpi"].string)
    }
}
