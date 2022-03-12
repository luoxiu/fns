
import XCTest
@testable import fns

class Test_flow: XCTestCase {

    func test() {
        XCTAssertEqual(
            flow(a, b)(1),
            1
        )
        
        XCTAssertEqual(
            try? flow(aThrows, bThrows)(1),
            1
        )
        
        XCTAssertEqual(
            flow(a, b, c)(1),
            1
        )
        
        XCTAssertEqual(
            try? flow(aThrows, bThrows, cThrows)(1),
            1
        )
        
        XCTAssertEqual(
            flow(a, b, c, d)(1),
            1
        )
        
        XCTAssertEqual(
            try? flow(aThrows, bThrows, cThrows, dThrows)(1),
            1
        )
        
        XCTAssertEqual(
            flow(a, b, c, d, e)(1),
            1
        )
        
        XCTAssertEqual(
            try? flow(aThrows, bThrows, cThrows, dThrows, eThrows)(1),
            1
        )
        
        XCTAssertEqual(
            flow(a, b, c, d, e, f)(1),
            1
        )
        
        XCTAssertEqual(
            try? flow(aThrows, bThrows, cThrows, dThrows, eThrows, fThrows)(1),
            1
        )
        
        XCTAssertEqual(
            flow(a, b, c, d, e, f, g)(1),
            1
        )
        
        XCTAssertEqual(
            try? flow(aThrows, bThrows, cThrows, dThrows, eThrows, fThrows, gThrows)(1),
            1
        )
        
    }
}


private func a(_ x: Int) -> Int? {
    return x
}

private func aThrows(_ x: Int) throws -> Int {
    return x
}

private func b(_ x: Int) -> Int? {
    return x
}

private func bThrows(_ x: Int) throws -> Int {
    return x
}

private func c(_ x: Int) -> Int? {
    return x
}

private func cThrows(_ x: Int) throws -> Int {
    return x
}

private func d(_ x: Int) -> Int? {
    return x
}

private func dThrows(_ x: Int) throws -> Int {
    return x
}

private func e(_ x: Int) -> Int? {
    return x
}

private func eThrows(_ x: Int) throws -> Int {
    return x
}

private func f(_ x: Int) -> Int? {
    return x
}

private func fThrows(_ x: Int) throws -> Int {
    return x
}

private func g(_ x: Int) -> Int? {
    return x
}

private func gThrows(_ x: Int) throws -> Int {
    return x
}

    
