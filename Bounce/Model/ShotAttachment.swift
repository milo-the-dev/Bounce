import Foundation
import SwiftyJSON

class ShotAttachment {
    private (set) var id: Int
    private (set) var url: String
    private (set) var thumbnailUrl: String
    private (set) var size: Int
    private (set) var contentType: String
    private (set) var viewsCount: Int
    private (set) var createdAt: NSDate

    init(id: Int, url: String, thumbnailUrl: String, size: Int,
         contentType: String, viewsCount: Int = 0, createdAt: NSDate) {

        self.id = id
        self.url = url
        self.thumbnailUrl = thumbnailUrl
        self.size = size
        self.contentType = contentType
        self.viewsCount = viewsCount
        self.createdAt = createdAt
    }
}

extension ShotAttachment: JSONParceable {
    class func from(json: JSON) -> ShotAttachment {
        
        let createdAt = DateFormatter.dateFromString(json["created_at"].stringValue)
        
        return ShotAttachment(
            id: json["id"].intValue,
            url: json["url"].stringValue,
            thumbnailUrl: json["thumbnail_url"].stringValue,
            size: json["size"].intValue,
            contentType: json["content_type"].stringValue,
            viewsCount: json["views_count"].intValue,
            createdAt: createdAt)
    }
}
