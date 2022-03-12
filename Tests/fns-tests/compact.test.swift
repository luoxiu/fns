import XCTest
@testable import fns

class Test_compact: XCTestCase {
    
    func test() {
        let s = 0..<10
        XCTAssertEqual(
            compact(s) { i in
                i.isMultiple(of: 2) ? i : nil
            },
            [0, 2, 4, 6, 8]
        )
        
        let a = [0, nil, 1, 2, 3]
        XCTAssertEqual(
            compact(a),
            [0, 1, 2, 3]
        )
    }
}
