@testable import fns
import XCTest

class Test_each: XCTestCase {
    func test() {
        let a = [1, 2, 3]
        var r: [Int] = []
        
        each(a) {
            r.append($0)
        }
        
        XCTAssertEqual(r, [1, 2, 3])
    }
}
