@testable import fns
import XCTest

class Test_at: XCTestCase {
    
    func test() {
        let a = Array(0..<5)
        
        XCTAssertEqual(at(a, index: 1), 1)
        XCTAssertEqual(at(a, indexes: [1, 2]), [1, 2])
        
        XCTAssertEqual(at(a, keyPath: \.first), 0)
        XCTAssertEqual(at(a, keyPaths: [\.startIndex, \.count]), [0, 5])
    }
}
