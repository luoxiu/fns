public func slice<C>(_ c: C, _ r: Range<C.Index>) -> C.SubSequence where C: Collection {
    return c[r]
}
