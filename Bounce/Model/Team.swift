import Foundation

class Team: User {
    override var type: UserType {
        return UserType.Team
    }
}
