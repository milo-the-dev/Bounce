import Foundation

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
    private (set) var team: Team

    init(id: Int, title: String, description: String, width: Int, height: Int, images: Images, viewsCount: Int = 0,
         likesCount: Int = 0, commentsCount: Int = 0, attachmentsCount: Int = 0, reboundsCount: Int = 0,
         bucketsCount: Int = 0, createdAt: NSDate, updatedAt: NSDate, htmlUrl: String, attachmentsUrl: String,
         bucketsUrl: String, commentsUrl: String, likesUrl: String, projectsUrl: String, reboundsUrl: String,
         animated: Bool = false, tags: [String] = [], user: User, team: Team) {

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
