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
        
        describe("correctly converts data into JSON") {
            
            it("converts shots data into JSON") {
                let data = self.dataFromFile("testShots")
                let shotsJSON = JSONConverter.convert(data)
                
                expect(shotsJSON.array).toNot(beNil(), description: "should be an array of shots")
                expect(shotsJSON.arrayValue.count).to(equal(1))
            }
            
            it("coverts bucket data into JSON") {
                let data = self.dataFromFile("testBucket")
                let bucketJSON = JSONConverter.convert(data)
                
                expect(bucketJSON["name"].string).toNot(beNil())
                let name = bucketJSON["name"].stringValue
                expect(name).to(equal("Great Marks"))
            }
            
            it("converts attachements data into JSON") {
                let data = self.dataFromFile("testAttachments")
                let attachmentsJSON = JSONConverter.convert(data)
                
                expect(attachmentsJSON.array).toNot(beNil(), description: "should be an array of attachments")
                expect(attachmentsJSON.arrayValue.count).to(equal(1))
            }
        }
        
    }
    
    func dataFromFile(fileName: String) -> NSData {
        let path = NSBundle(forClass: JSONConverterSpec.self).pathForResource(fileName, ofType: "json")!
        return NSData(contentsOfFile: path)!
    }
    
}