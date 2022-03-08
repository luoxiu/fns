import XCTest
@testable import fns

class Test_slice: XCTestCase {
    
    func test() {
        let a = Array(0..<10)
        XCTAssertEqual(
            tap(slice(a, 0..<5), toArray),
            Array(0..<5)
        )
    }
}
