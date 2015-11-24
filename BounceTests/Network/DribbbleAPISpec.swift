@testable import Bounce

import Quick
import Nimble
import RxSwift

class DribbbleAPISpec: QuickSpec {
    
    override func spec() {
        
        let appAccessToken = "2517564562baea3d8df083ef5c60b0f4ca8d6a802857ff82329b112808977b77"

        describe("dribbble api generates proper urls") {

            it("generates correct shots url") {
                let shotsURL = DribbbleAPI.Shots.fullURL.absoluteString
                expect(shotsURL).to(equal("https://api.dribbble.com/v1/shots?access_token=\(appAccessToken)"))
            }

            it("generates correct attachments url") {
                let attachmentsURL = DribbbleAPI.Attachments(1234).fullURL.absoluteString
                expect(attachmentsURL).to(equal("https://api.dribbble.com/v1/shots/1234/attachments?access_token=\(appAccessToken)"))
            }
            
            it("generates correct buckets url") {
                let bucketsURL = DribbbleAPI.Buckets(12).fullURL.absoluteString
                expect(bucketsURL).to(equal("https://api.dribbble.com/v1/buckets/12?access_token=\(appAccessToken)"))
            }
        }

    }
}
