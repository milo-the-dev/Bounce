//
//  JSONConverterSpec.swift
//  Bounce
//
//  Created by Marlow Charite on 11/8/15.
//  Copyright © 2015 Marlow Charite. All rights reserved.
//

@testable import Bounce

import Quick
import Nimble
import SwiftyJSON

class JSONConverterSpec: QuickSpec {
    
    override func spec() {
        
        it("doesn't return nil if there is a valid response") {
            
            var shotsJSON: JSON?
            
            let networkController = NetworkController()
            let subscription = networkController.fetchShots()
                .map(JSONConverter.convert)
                .subscribeNext { json in shotsJSON = json }
            
            expect(shotsJSON).toEventuallyNot(beNil())
            
            subscription.dispose()
        }

    }
    
}