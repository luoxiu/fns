import XCTest
@testable import fns

class Test_toArray: XCTestCase {
    func test() {
        let r = 1...3
        
        XCTAssertEqual(
            toArray(r),
            [1, 2, 3]
        )
    }
}
