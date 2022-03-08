public func flatMap<S, A>(_ s: S, _ fn: (S.Element) throws -> A) rethrows -> [A.Element] where S: Sequence, A: Sequence {
    try s.flatMap(fn)
}
