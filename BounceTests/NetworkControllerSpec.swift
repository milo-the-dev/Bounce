//
//  NetworkControllerSpec.swift
//  Bounce
//
//  Created by Marlow Charite on 11/7/15.
//  Copyright © 2015 Marlow Charite. All rights reserved.
//

@testable import Bounce

import Quick
import Nimble
import RxSwift

class NetworkControllerSpec: QuickSpec {
    
    override func spec() {
        
        var networkController: NetworkController!
        
        beforeSuite {
            networkController = NetworkController()
        }

        afterSuite {
            networkController = nil
        }
        
        describe("initial tests...") {
            
            it("fetch shots should not return nil") {
                expect(networkController.fetchShots()).notTo(beNil())
            }
            
        }
        
    }
    
}