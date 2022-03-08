public func chunk<C>(_ c: C, size: Int) -> [C.SubSequence] where C: Collection {
    var chunks: [C.SubSequence] = []

    var from = c.startIndex
    
    while let to = c.index(from, offsetBy: size, limitedBy: c.endIndex) {
        chunks.append(c[from..<to])

        from = to
    }
    
    if from != c.endIndex {
        chunks.append((c[from...]))
    }
    
    return chunks
}

public func chunk<S, T>(_ s: S, fn: (S.Element) throws -> T) rethrows -> [(T, [S.Element])] where S: Sequence, T: Equatable {
    var chunks: [(T, [S.Element])] = []
    
    for e in s {
        let t = try fn(e)
        if let index = chunks.firstIndex(where: { $0.0 == t }) {
            chunks[index].1.append(e)
        } else {
            chunks.append((t, [e]))
        }
    }
    
    return chunks
}
