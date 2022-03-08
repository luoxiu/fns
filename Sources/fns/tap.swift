public func tap<I, O>(_ i: I, _ fn: (I) throws -> O) rethrows -> O {
    try fn(i)
}
