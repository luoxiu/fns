public func at<C>(_ c: C, index: C.Index) -> C.Element where C: Collection {
    c[index]
}

public func at<C>(_ c: C, indexes: [C.Index]) -> [C.Element] where C: Collection {
    indexes.map(curry(at)(c))
}

public func at<V, T>(_ v: V, keyPath: KeyPath<V, T>) -> T {
    v[keyPath: keyPath]
}

public func at<V, T>(_ v: V, keyPaths: [KeyPath<V, T>]) -> [T] {
    keyPaths.map(curry(at)(v))

}
