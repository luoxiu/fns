
@testable import fns
import XCTest

class Test_curry: XCTestCase {

    func test() {
        XCTAssertEqual(
            curry(fn)(0)(1),
            1
        )
        XCTAssertEqual(
            curry(fn)(0)(1)(2),
            3
        )
        XCTAssertEqual(
            curry(fn)(0)(1)(2)(3),
            6
        )
        XCTAssertEqual(
            curry(fn)(0)(1)(2)(3)(4),
            10
        )
        XCTAssertEqual(
            curry(fn)(0)(1)(2)(3)(4)(5),
            15
        )
        XCTAssertEqual(
            curry(fn)(0)(1)(2)(3)(4)(5)(6),
            21
        )
    }
}

private func fn(
    _ a: Int,
    _ b: Int
)
    -> Int
{
    return a + b
}

private func fn(
    _ a: Int,
    _ b: Int,
    _ c: Int
)
    -> Int
{
    return a + b + c
}

private func fn(
    _ a: Int,
    _ b: Int,
    _ c: Int,
    _ d: Int
)
    -> Int
{
    return a + b + c + d
}

private func fn(
    _ a: Int,
    _ b: Int,
    _ c: Int,
    _ d: Int,
    _ e: Int
)
    -> Int
{
    return a + b + c + d + e
}

private func fn(
    _ a: Int,
    _ b: Int,
    _ c: Int,
    _ d: Int,
    _ e: Int,
    _ f: Int
)
    -> Int
{
    return a + b + c + d + e + f
}

private func fn(
    _ a: Int,
    _ b: Int,
    _ c: Int,
    _ d: Int,
    _ e: Int,
    _ f: Int,
    _ g: Int
)
    -> Int
{
    return a + b + c + d + e + f + g
}

