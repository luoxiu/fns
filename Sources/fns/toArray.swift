public func toArray<S>(_ s: S) -> [S.Element] where S: Sequence {
    return Array(s)
}
