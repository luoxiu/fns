@testable import fns
import XCTest

class Test_flatMap: XCTestCase {
    
    func test() {
        let a = [1, 2, 3]
        
        XCTAssertEqual(
            flatMap(a, { repeatElement($0, count: 1) }),
            [1, 2, 3]
        )
    }
}
