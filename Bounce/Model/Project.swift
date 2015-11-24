import Foundation

class Project {
    private (set) var id: Int
    private (set) var name: String
    private (set) var description: String
    private (set) var shotsCount: Int
    private (set) var createdAt: NSDate
    private (set) var updatedAt: NSDate
    private (set) var user: User

    init(id: Int, name: String, description: String, shotsCount: Int = 0, createdAt: NSDate, updatedAt: NSDate, user: User) {
        self.id = id
        self.name = name
        self.description = description
        self.shotsCount = shotsCount
        self.createdAt = createdAt
        self.updatedAt = updatedAt
        self.user = user
    }
}