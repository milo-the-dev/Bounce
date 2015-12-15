import SwiftyJSON

protocol JSONParceable {
    typealias T // protocols do not support generics at the time of writing
    static func from(json: JSON) -> T
}