import XCTest
@testable import fns

class Test_chunk: XCTestCase {
    func test() {
        
        let a = Array(0..<10)
        
        XCTAssertEqual(
            chunk(a, size: 3).map(toArray),
            [
                [0, 1, 2],
                [3, 4, 5],
                [6, 7, 8],
                [9]
            ]
        )
        XCTAssertEqual(
            chunk(a, size: 5).map(toArray),
            [
                [0, 1, 2, 3, 4],
                [5, 6, 7, 8, 9]
            ]
        )
        
        XCTAssertEqual(
            chunk(a, fn: { $0 % 3 }).map { $0.0 },
            [0, 1, 2]
        )
        XCTAssertEqual(
            chunk(a, fn: { $0 % 3 }).map { $0.1 },
            [
                [0, 3, 6, 9],
                [1, 4, 7],
                [2, 5, 8]
            ]
        )
    }
}
