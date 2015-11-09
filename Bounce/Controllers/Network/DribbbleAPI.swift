//
//  DribbbleAPI.swift
//  Bounce
//
//  Created by Marlow Charite on 11/8/15.
//  Copyright © 2015 Marlow Charite. All rights reserved.
//

import Foundation

private enum DribbbleAccessToken: String {
    case ClientID = "50ea8c3e8c0a2637c41101e9591bb65f8c0b36a600db9a34d1a3a53a83ab7f36"
    case ClientSecret = "d59ef819b1b7eec961be47e540bbb25cc792cc622c785bbf2780e0b3bd7659e1"
    case ClientAccessToken = "2517564562baea3d8df083ef5c60b0f4ca8d6a802857ff82329b112808977b77"
}

private protocol Route {
    var baseURL: NSURL { get }
    var path: String { get }
    var fullURL: NSURL { get }
}

enum DribbbleAPI {
    // shots
    case Shots
    case Attachments(Int)

    // buckets
    case Buckets(Int)
}

extension DribbbleAPI: Route {
    
    var fullURL: NSURL { return NSURL(string: path, relativeToURL: baseURL)! }
    
    private var baseURL: NSURL { return NSURL(string: "https://api.dribbble.com/v1/")! }
    
    var path: String {
        
        let accessToken = DribbbleAccessToken.ClientAccessToken.rawValue
        
        switch self {
        case .Shots:
            return "shots?access_token=\(accessToken)"
        case let .Attachments(shotID):
            return "shots/\(shotID)/attachments?access_token=\(accessToken)"
        case let .Buckets(id):
            return "buckets/\(id)?access_token=\(accessToken)"
        }
    }
}
