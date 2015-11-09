import Foundation

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
