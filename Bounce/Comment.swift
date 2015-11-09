import Foundation

class Comment {
    private (set) var id: Int
    private (set) var body: String
    private (set) var likesCount: Int
    private (set) var likesUrl: String
    private (set) var createdAt: String
    private (set) var updatedAt: String
    private (set) var user: User

    init(id: Int, body: String, likesCount: Int = 0, likesUrl: String, createdAt: String, updatedAt: String, user: User) {
        self.id = id
        self.body = body
        self.likesCount = likesCount
        self.likesUrl = likesUrl
        self.createdAt = createdAt
        self.updatedAt = updatedAt
        self.user = user
    }
}
