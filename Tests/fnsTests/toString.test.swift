import XCTest
@testable import fns

class Test_toString: XCTestCase {
    func test() {
        let i = 1
        
        XCTAssertEqual(
            toString(i),
            "1"
        )
    }
}
