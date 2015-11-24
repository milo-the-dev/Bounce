import Foundation
import SwiftyJSON

class Bucket {
    private (set) var id: Int
    private (set) var name: String
    private (set) var description: String
    private (set) var shotsCount: Int
    private (set) var createdAt: NSDate
    private (set) var updatedAt: NSDate
    private (set) var user: User

    init(id: Int, name: String, description: String, shotsCount: Int = 0,
         createdAt: NSDate, updatedAt: NSDate, user: User) {
        self.id = id
        self.name = name
        self.description = description
        self.shotsCount = shotsCount
        self.createdAt = createdAt
        self.updatedAt = updatedAt
        self.user = user
    }
}

extension Bucket: JSONParceable {
    static func from(json: JSON) -> Bucket {
        
        let user = User.from(json["user"])
        let createdAt = DateFormatter.dateFromString(json["created_at"].stringValue)
        let updatedAt = DateFormatter.dateFromString(json["updated_at"].stringValue)

        return Bucket(
            id: json["id"].intValue,
            name: json["name"].stringValue,
            description: json["description"].stringValue,
            shotsCount: json["shots_count"].intValue,
            createdAt: createdAt,
            updatedAt: updatedAt,
            user: user)
    }
}
