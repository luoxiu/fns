public func append<C>(_ c: C, _ element: C.Element) -> C where C: RangeReplaceableCollection {
    var c = c
    c.append(element)
    return c
}

public func append<C>(_ c: C, _ elements: C.Element...) -> C where C: RangeReplaceableCollection {
    var c = c
    c.append(contentsOf: elements)
    return c
}
