public func concat<C>(_ c: C, _ elements: [C.Element]) -> C where C: RangeReplaceableCollection {
    var c = c
    c.append(contentsOf: elements)
    return c
}
