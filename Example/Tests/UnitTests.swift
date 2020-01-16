import XCTest
import MOBreakingBadAPI
@testable import MOBreakingBadAPI

class UnitTests: XCTestCase {
    
    var api: MOBreakingBadAPI!
    
    override func setUp() {
        super.setUp()
        api = MOBreakingBadAPI()
    }
    
    func testRandomQuote() {
        let expectation = self.expectation(description: "Wait API Response")
        var quote: Quote?
        api.getRandomQuote { (result) in
            quote = result
            expectation.fulfill()
        }
        waitForExpectations(timeout: 5, handler: nil)
        XCTAssertTrue((quote as Any) is Quote)
        XCTAssertTrue(type(of: quote!.id) == Int.self )
        XCTAssertTrue(type(of: quote!.author) == String.self)
        XCTAssertTrue(type(of: quote!.quote) == String.self)
    }
    
    func testRandomQuoteFromJessePinkman() {
        let expectation = self.expectation(description: "Wait API Response")
        var quote: Quote?
        api.getQuote(from: "Jesse Pinkman") { (result) in
            quote = result
            expectation.fulfill()
        }
        waitForExpectations(timeout: 5, handler: nil)
        XCTAssertTrue((quote as Any) is Quote)
        XCTAssertTrue(type(of: quote!.id) == Int.self )
        XCTAssertEqual(quote?.author, "Jesse Pinkman")
        XCTAssertTrue(type(of: quote!.quote) == String.self)
    }
    
    func testRandomQuoteFromNotExisting() {
        let expectation = self.expectation(description: "Wait API Response")
        var quote: Quote?
        api.getQuote(from: "Not Existing") { (result) in
            quote = result
            expectation.fulfill()
        }
        
        waitForExpectations(timeout: 5, handler: nil)
        XCTAssertNil(quote)
    }
    
    func testRandomQuoteCharacterWithSpecialCharacters() {
        let expectation = self.expectation(description: "Wait API Response")
        var quote: Quote?
        api.getQuote(from: "£Cash* $Money%") { (result) in
            quote = result
            expectation.fulfill()
        }
        
        waitForExpectations(timeout: 5, handler: nil)
        XCTAssertNil(quote)
    }
    
    func testGetAllCharacters() {
        let expectation = self.expectation(description: "Wait API Response")
        var characters: [Character] = []
        api.getAllCharacters { (results) in
            characters = results
            expectation.fulfill()
        }
        
        waitForExpectations(timeout: 5, handler: nil)
        XCTAssertTrue(type(of: characters) == [Character].self)
    }

    
}
