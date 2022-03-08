public func map<S, T>(_ s: S, _ fn: (S.Element) throws -> T) rethrows -> [T] where S: Sequence {
    try s.map(fn)
}
