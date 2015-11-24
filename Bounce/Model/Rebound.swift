import Foundation


class Rebound: TypedUser {
    private (set) var id: Int
    private (set) var name: String
    private (set) var username: String
    private (set) var htmlUrl: String
    private (set) var avatarUrl: String
    private (set) var bio: String
    private (set) var location: String
    private (set) var links: Links
    private (set) var bucketsCount: Int
    private (set) var commentsReceivedCount: Int
    private (set) var followersCount: Int
    private (set) var followingsCount: Int
    private (set) var likesCount: Int
    private (set) var likesReceivedCount: Int
    private (set) var projectsCount: Int
    private (set) var reboundsReceivedCount: Int
    private (set) var shotsCount: Int
    private (set) var teamsCount: Int
    private (set) var canUploadShot: Bool
    private (set) var pro: Bool
    private (set) var bucketsUrl: String
    private (set) var followersUrl: String
    private (set) var followingUrl: String
    private (set) var likesUrl: String
    private (set) var shotsUrl: String
    private (set) var teamsUrl: String
    private (set) var createdAt: NSDate
    private (set) var updatedAt: NSDate
    private (set) var reboundSourceUrl: String

    init(id: Int, name: String, username: String, htmlUrl: String, avatarUrl: String, bio: String,
         location: String, links: Links, bucketsCount: Int = 0, commentsReceivedCount: Int = 0, followersCount: Int = 0,
         followingsCount: Int = 0, likesCount: Int = 0, likesReceivedCount: Int = 0, projectsCount: Int = 0,
         reboundsReceivedCount: Int = 0, shotsCount: Int = 0, teamsCount: Int = 0, canUploadShot: Bool = true,
         pro: Bool = false, bucketsUrl: String, followersUrl: String,
         followingUrl: String, likesUrl: String, shotsUrl: String, teamsUrl: String,
         createdAt: NSDate, updatedAt: NSDate, reboundSourceUrl: String) {

        self.id = id
        self.name = name
        self.username = username
        self.htmlUrl = htmlUrl
        self.avatarUrl = avatarUrl
        self.bio = bio
        self.location = location
        self.links = links
        self.bucketsCount = bucketsCount
        self.commentsReceivedCount = commentsReceivedCount
        self.followersCount = followersCount
        self.followingsCount = followingsCount
        self.likesCount = likesCount
        self.likesReceivedCount = likesReceivedCount
        self.projectsCount = projectsCount
        self.reboundsReceivedCount = reboundsReceivedCount
        self.shotsCount = shotsCount
        self.teamsCount = teamsCount
        self.canUploadShot = canUploadShot
        self.pro = pro
        self.bucketsUrl = bucketsUrl
        self.followersUrl = followersUrl
        self.followingUrl = followingUrl
        self.likesUrl = likesUrl
        self.shotsUrl = shotsUrl
        self.teamsUrl = teamsUrl
        self.createdAt = createdAt
        self.updatedAt = updatedAt
        self.reboundSourceUrl = reboundSourceUrl
    }

    var type: UserType {
        return UserType.Player
    }

}