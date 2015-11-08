//
// Created by Marlow Charite on 11/7/15.
// Copyright (c) 2015 Marlow Charite. All rights reserved.
//

import Foundation
import RxSwift
import RxCocoa

private enum DribbbleAccessToken: String {
    case ClientID = "50ea8c3e8c0a2637c41101e9591bb65f8c0b36a600db9a34d1a3a53a83ab7f36"
    case ClientSecret = "d59ef819b1b7eec961be47e540bbb25cc792cc622c785bbf2780e0b3bd7659e1"
    case ClientAccessToken = "2517564562baea3d8df083ef5c60b0f4ca8d6a802857ff82329b112808977b77"
}

protocol Endpoint {
    var path: String { get }
}

private enum DribbbleAPI {
    // shots
    case Shots
    case Attachments(shotID: Int)
    
    // buckets
    case Buckets(id: Int)
}

class NetworkController {
    
    static private let hostUrl = NSURL(string: "https://api.dribbble.com/v1/")
    private let session: NSURLSession
    
    init(session: NSURLSession = NSURLSession.sharedSession()) {
        self.session = session
    }
    
    // MARK: Shots
    
    func fetchShots() -> Observable<NSData> {
        let url = NSURL(
            string: "shots?access_token=\(DribbbleAccessToken.ClientAccessToken.rawValue)",
            relativeToURL: NetworkController.hostUrl
        )

        return GET(url!)
    }
    
    func fetchAttachments(withShotID id: Int) -> Observable<NSData> {
        let url = NSURL(
            string: "shots/\(id)/attachments?access_token=\(DribbbleAccessToken.ClientAccessToken.rawValue)",
            relativeToURL: NetworkController.hostUrl
        )
        
        return GET(url!)
    }
    
    // MARK: Buckets

    func fetchBucket(withID id: Int) -> Observable<NSData> {
        let url = NSURL(
            string: "buckets/\(id)?access_token=\(DribbbleAccessToken.ClientAccessToken.rawValue)",
            relativeToURL: NetworkController.hostUrl
        )

        return GET(url!)
    }

    
    // MARK: Private methods
    
    private func GET(url: NSURL) -> Observable<NSData> {
        let request = NSURLRequest(URL: url)
        return session.rx_data(request)
    }

}

