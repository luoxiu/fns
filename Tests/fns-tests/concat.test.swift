import XCTest
@testable import fns

class Test_concat: XCTestCase {
    func test() {
        let a = [1, 2, 3]
        
        XCTAssertEqual(
            concat(a, [4, 5, 6]),
            [1, 2, 3, 4, 5, 6]
        )
    }
}
