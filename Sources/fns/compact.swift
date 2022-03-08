public func compact<S, T>(_ s: S, fn: (S.Element) throws -> T?) rethrows -> [T] where S: Sequence {
    try s.compactMap(fn)
}

public func compact<S, E>(_ s: S) -> [E] where S: Sequence, S.Element == Optional<E> {
    s.compactMap { $0 }
}
