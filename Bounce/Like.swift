import Foundation

class Like {
    private (set) var id: Int
    private (set) var createdAt: NSDate
    private (set) var type: LikeType
    private (set) var user: User?
    private (set) var shot: Shot?

    init(id: Int, createdAt: NSDate, type: LikeType, user: User? = nil, shot: Shot? = nil) {
        self.id = id
        self.createdAt = createdAt
        self.type = type
        self.user = user
        self.shot = shot
    }
}

