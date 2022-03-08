@testable import fns
import XCTest

class Test_map: XCTestCase {
    func test() {
        let a = [1, 2, 3]
        
        XCTAssertEqual(
            map(a, { $0 * $0 }),
            [1, 4, 9]
        )
    }
}
