import Foundation

class Images {
    private (set) var normal: String
    private (set) var teaser: String
    private (set) var hidpi: String?

    init(normal: String, teaser: String, hidpi : String? = nil) {
        self.normal = normal
        self.teaser = teaser
        self.hidpi = hidpi;
    }
}
