import Foundation
import SwiftyJSON

class Shot {
    private (set) var id: Int
    private (set) var title: String
    private (set) var description: String
    private (set) var width: Int
    private (set) var height: Int
    private (set) var images: Images
    private (set) var viewsCount: Int
    private (set) var likesCount: Int
    private (set) var commentsCount: Int
    private (set) var attachmentsCount: Int
    private (set) var reboundsCount: Int
    private (set) var bucketsCount: Int
    private (set) var createdAt: NSDate
    private (set) var updatedAt: NSDate
    private (set) var htmlUrl: String
    private (set) var attachmentsUrl: String
    private (set) var bucketsUrl: String
    private (set) var commentsUrl: String
    private (set) var likesUrl: String
    private (set) var projectsUrl: String
    private (set) var reboundsUrl: String
    private (set) var animated: Bool
    private (set) var tags: [String]
    private (set) var user: User
    private (set) var team: Team?

    init(id: Int, title: String, description: String, width: Int, height: Int, images: Images, viewsCount: Int = 0,
         likesCount: Int = 0, commentsCount: Int = 0, attachmentsCount: Int = 0, reboundsCount: Int = 0,
         bucketsCount: Int = 0, createdAt: NSDate, updatedAt: NSDate, htmlUrl: String, attachmentsUrl: String,
         bucketsUrl: String, commentsUrl: String, likesUrl: String, projectsUrl: String, reboundsUrl: String,
         animated: Bool = false, tags: [String] = [], user: User, team: Team? = nil) {

        self.id = id
        self.title = title
        self.description = description
        self.width = width
        self.height = height
        self.images = images
        self.viewsCount = viewsCount
        self.likesCount = likesCount
        self.commentsCount = commentsCount
        self.attachmentsCount = attachmentsCount
        self.reboundsCount = reboundsCount
        self.bucketsCount = bucketsCount
        self.createdAt = createdAt
        self.updatedAt = updatedAt
        self.htmlUrl = htmlUrl
        self.attachmentsUrl = attachmentsUrl
        self.bucketsUrl = bucketsUrl
        self.commentsUrl = commentsUrl
        self.likesUrl = likesUrl
        self.projectsUrl = projectsUrl
        self.reboundsUrl = reboundsUrl
        self.animated = animated
        self.tags = tags
        self.user = user
        self.team = team
    }
}

extension Shot: JSONParceable {
    class func from(json: JSON) -> Shot {
        
        let images = Images.from(json["images"])
        let user = User.from(json["user"])
        
        let createdAt = DateFormatter.dateFromString(json["created_at"].stringValue)
        let updatedAt = DateFormatter.dateFromString(json["updated_at"].stringValue)
        
        let tags = json["tags"].arrayValue.map {
            String($0)
        }

        return Shot(id: json["id"].intValue,
            title: json["title"].stringValue,
            description: json["description"].stringValue,
            width: json["width"].intValue,
            height: json["height"].intValue,
            images: images,
            viewsCount: json["views_count"].intValue,
            likesCount: json["likes_count"].intValue,
            commentsCount: json["comments_count"].intValue,
            attachmentsCount: json["attachments_count"].intValue,
            reboundsCount: json["rebounds_count"].intValue,
            bucketsCount: json["buckets_count"].intValue,
            createdAt: createdAt,
            updatedAt: updatedAt,
            htmlUrl: json["html_url"].stringValue,
            attachmentsUrl: json["attachments_url"].stringValue,
            bucketsUrl: json["buckets_url"].stringValue,
            commentsUrl: json["comments_url"].stringValue,
            likesUrl: json["likes_url"].stringValue,
            projectsUrl: json["projects_url"].stringValue,
            reboundsUrl: json["rebounds_url"].stringValue,
            animated: json["animated"].boolValue,
            tags: tags,
            user: user,
            team: nil)
    }
}
