@testable import fns
import XCTest

class Test_tap: XCTestCase {
    func test() {
        let a = [1, 2, 3]
        XCTAssertEqual(
            tap(a) {
                $0.count
            },
            3
        )
    }
}
