//
// Created by Marlow Charite on 11/7/15.
// Copyright (c) 2015 Marlow Charite. All rights reserved.
//

import Foundation
import RxSwift
import RxCocoa

class NetworkController {
    
    private let session: NSURLSession
    
    init(session: NSURLSession = NSURLSession.sharedSession()) {
        self.session = session
    }
    
    // MARK: Shots
    
    func fetchShots() -> Observable<NSData> {
        return GET(DribbbleAPI.Shots)
    }
    
    func fetchAttachments(withShotID id: Int) -> Observable<NSData> {
        return GET(DribbbleAPI.Attachments(id))
    }
    
    // MARK: Buckets

    func fetchBucket(withID id: Int) -> Observable<NSData> {
        return GET(DribbbleAPI.Buckets(id))
    }
    
    // MARK: Private methods
    
    private func GET(route: DribbbleAPI) -> Observable<NSData> {
        let request = NSURLRequest(URL: route.fullURL)
        return session.rx_data(request)
    }

}
