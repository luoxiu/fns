
import XCTest
@testable import fns

class Test_zip: XCTestCase {

    func test() {
        let a = [1]
        let b = [1, 1]
        let c = [1, 1, 1]
        let d = [1, 1, 1, 1]
        let e = [1, 1, 1, 1, 1]
        let f = [1, 1, 1, 1, 1, 1]
        let g = [1, 1, 1, 1, 1, 1, 1]

        func add(_ a: Int, _ b: Int) -> Int {
            return a + b
        }
    
        XCTAssertEqual(
            zip(a, b, add),
            [2]
        )
        
        func addThrows(_ a: Int, _ b: Int) throws -> Int {
            return a + b
        }
    
        XCTAssertEqual(
            try? zip(a, b, addThrows),
            [2]
        )
        
        func add(_ a: Int, _ b: Int, _ c: Int) -> Int {
            return a + b + c
        }
    
        XCTAssertEqual(
            zip(a, b, c, add),
            [3]
        )
        
        func addThrows(_ a: Int, _ b: Int, _ c: Int) throws -> Int {
            return a + b + c
        }
    
        XCTAssertEqual(
            try? zip(a, b, c, addThrows),
            [3]
        )
        
        func add(_ a: Int, _ b: Int, _ c: Int, _ d: Int) -> Int {
            return a + b + c + d
        }
    
        XCTAssertEqual(
            zip(a, b, c, d, add),
            [4]
        )
        
        func addThrows(_ a: Int, _ b: Int, _ c: Int, _ d: Int) throws -> Int {
            return a + b + c + d
        }
    
        XCTAssertEqual(
            try? zip(a, b, c, d, addThrows),
            [4]
        )
        
        func add(_ a: Int, _ b: Int, _ c: Int, _ d: Int, _ e: Int) -> Int {
            return a + b + c + d + e
        }
    
        XCTAssertEqual(
            zip(a, b, c, d, e, add),
            [5]
        )
        
        func addThrows(_ a: Int, _ b: Int, _ c: Int, _ d: Int, _ e: Int) throws -> Int {
            return a + b + c + d + e
        }
    
        XCTAssertEqual(
            try? zip(a, b, c, d, e, addThrows),
            [5]
        )
        
        func add(_ a: Int, _ b: Int, _ c: Int, _ d: Int, _ e: Int, _ f: Int) -> Int {
            return a + b + c + d + e + f
        }
    
        XCTAssertEqual(
            zip(a, b, c, d, e, f, add),
            [6]
        )
        
        func addThrows(_ a: Int, _ b: Int, _ c: Int, _ d: Int, _ e: Int, _ f: Int) throws -> Int {
            return a + b + c + d + e + f
        }
    
        XCTAssertEqual(
            try? zip(a, b, c, d, e, f, addThrows),
            [6]
        )
        
        func add(_ a: Int, _ b: Int, _ c: Int, _ d: Int, _ e: Int, _ f: Int, _ g: Int) -> Int {
            return a + b + c + d + e + f + g
        }
    
        XCTAssertEqual(
            zip(a, b, c, d, e, f, g, add),
            [7]
        )
        
        func addThrows(_ a: Int, _ b: Int, _ c: Int, _ d: Int, _ e: Int, _ f: Int, _ g: Int) throws -> Int {
            return a + b + c + d + e + f + g
        }
    
        XCTAssertEqual(
            try? zip(a, b, c, d, e, f, g, addThrows),
            [7]
        )
        
    }
}

