import XCTest
@testable import fns

class Test_append: XCTestCase {
    
    func test() {
        let a = [1]
        
        XCTAssertEqual(
            append(a, 2),
            [1, 2]
        )
        
        XCTAssertEqual(
            append(a, 2, 3),
            [1, 2, 3]
        )
    }
}
