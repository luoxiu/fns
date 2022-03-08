public func each<S>(_ s: S, _ fn: (S.Element) throws -> Void) rethrows where S: Sequence {
    try s.forEach(fn)
}
