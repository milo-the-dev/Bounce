import Foundation

import RxSwift
import RxCocoa
import SwiftyJSON

class NetworkController {
    
    private let session: NSURLSession
    
    init(session: NSURLSession = NSURLSession.sharedSession()) {
        self.session = session
    }
    
    // MARK: Shots
    
    func fetchShots() -> Observable<[Shot]> {
        return GET(.Shots)
            .map { json in json.arrayValue.map(Shot.from) }
    }
    
    func fetchAttachments(withShotID id: Int) -> Observable<[ShotAttachment]> {
        return GET(.Attachments(id))
            .map { json in json.arrayValue.map(ShotAttachment.from) }
    }
    
    // MARK: Buckets

    func fetchBucket(withID id: Int) -> Observable<Bucket> {
        return GET(.Buckets(id))
            .map(Bucket.from)
    }
    
    // MARK: Private methods
    
    private func GET(route: DribbbleAPI) -> Observable<JSON> {
        let request = NSURLRequest(URL: route.fullURL)
        return session.rx_data(request)
            .map(JSONConverter.convert)
    }

}
