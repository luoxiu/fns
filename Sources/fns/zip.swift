
public func zip<A, B, Z>(
    _ a: A,
    _ b: B,
    _ fn: (A.Element, B.Element) throws -> Z
)
    rethrows -> [Z]
    where
        A: Sequence,
        B: Sequence
{
    return try zip(a, b).lazy.map(fn)
}

public func zip<A, B, C>(
    _ a: A,
    _ b: B,
    _ c: C
)
    -> Zip3Sequence<A, B, C>
{
    return Zip3Sequence(a, b, c)
}

public func zip<A, B, C, Z>(
    _ a: A,
    _ b: B,
    _ c: C,
    _ fn: (A.Element, B.Element, C.Element) throws -> Z
)
    rethrows -> [Z]
    where
        A: Sequence,
        B: Sequence,
        C: Sequence
{
    return try zip(a, b, c).lazy.map(fn)
}

public struct Zip3Sequence<
    A: Sequence,
    B: Sequence,
    C: Sequence
>: Sequence {

    let a: A
    let b: B
    let c: C

    public init(
        _ a: A,
        _ b: B,
        _ c: C
    ) {
        self.a = a
        self.b = b
        self.c = c
    }

    public struct Iterator: IteratorProtocol {
        var iteratorA: A.Iterator
        var iteratorB: B.Iterator
        var iteratorC: C.Iterator

        init(
            _ iteratorA: A.Iterator,
            _ iteratorB: B.Iterator,
            _ iteratorC: C.Iterator
        ) {
            self.iteratorA = iteratorA
            self.iteratorB = iteratorB
            self.iteratorC = iteratorC
        }

        public typealias Element = (
            A.Element,
            B.Element,
            C.Element
        )

        var end = false

        public mutating func next() -> Element? {
            if end { return nil }

            guard
                let a = iteratorA.next(),
                let b = iteratorB.next(),
                let c = iteratorC.next()
            else {
                end = true
                return nil
            }

            return (
                a, b, c
            )
        }
    }
    
    public func makeIterator() -> Iterator {
        return Iterator(
            a.makeIterator(),
            b.makeIterator(),
            c.makeIterator()
        )
    }
}
public func zip<A, B, C, D>(
    _ a: A,
    _ b: B,
    _ c: C,
    _ d: D
)
    -> Zip4Sequence<A, B, C, D>
{
    return Zip4Sequence(a, b, c, d)
}

public func zip<A, B, C, D, Z>(
    _ a: A,
    _ b: B,
    _ c: C,
    _ d: D,
    _ fn: (A.Element, B.Element, C.Element, D.Element) throws -> Z
)
    rethrows -> [Z]
    where
        A: Sequence,
        B: Sequence,
        C: Sequence,
        D: Sequence
{
    return try zip(a, b, c, d).lazy.map(fn)
}

public struct Zip4Sequence<
    A: Sequence,
    B: Sequence,
    C: Sequence,
    D: Sequence
>: Sequence {

    let a: A
    let b: B
    let c: C
    let d: D

    public init(
        _ a: A,
        _ b: B,
        _ c: C,
        _ d: D
    ) {
        self.a = a
        self.b = b
        self.c = c
        self.d = d
    }

    public struct Iterator: IteratorProtocol {
        var iteratorA: A.Iterator
        var iteratorB: B.Iterator
        var iteratorC: C.Iterator
        var iteratorD: D.Iterator

        init(
            _ iteratorA: A.Iterator,
            _ iteratorB: B.Iterator,
            _ iteratorC: C.Iterator,
            _ iteratorD: D.Iterator
        ) {
            self.iteratorA = iteratorA
            self.iteratorB = iteratorB
            self.iteratorC = iteratorC
            self.iteratorD = iteratorD
        }

        public typealias Element = (
            A.Element,
            B.Element,
            C.Element,
            D.Element
        )

        var end = false

        public mutating func next() -> Element? {
            if end { return nil }

            guard
                let a = iteratorA.next(),
                let b = iteratorB.next(),
                let c = iteratorC.next(),
                let d = iteratorD.next()
            else {
                end = true
                return nil
            }

            return (
                a, b, c, d
            )
        }
    }
    
    public func makeIterator() -> Iterator {
        return Iterator(
            a.makeIterator(),
            b.makeIterator(),
            c.makeIterator(),
            d.makeIterator()
        )
    }
}
public func zip<A, B, C, D, E>(
    _ a: A,
    _ b: B,
    _ c: C,
    _ d: D,
    _ e: E
)
    -> Zip5Sequence<A, B, C, D, E>
{
    return Zip5Sequence(a, b, c, d, e)
}

public func zip<A, B, C, D, E, Z>(
    _ a: A,
    _ b: B,
    _ c: C,
    _ d: D,
    _ e: E,
    _ fn: (A.Element, B.Element, C.Element, D.Element, E.Element) throws -> Z
)
    rethrows -> [Z]
    where
        A: Sequence,
        B: Sequence,
        C: Sequence,
        D: Sequence,
        E: Sequence
{
    return try zip(a, b, c, d, e).lazy.map(fn)
}

public struct Zip5Sequence<
    A: Sequence,
    B: Sequence,
    C: Sequence,
    D: Sequence,
    E: Sequence
>: Sequence {

    let a: A
    let b: B
    let c: C
    let d: D
    let e: E

    public init(
        _ a: A,
        _ b: B,
        _ c: C,
        _ d: D,
        _ e: E
    ) {
        self.a = a
        self.b = b
        self.c = c
        self.d = d
        self.e = e
    }

    public struct Iterator: IteratorProtocol {
        var iteratorA: A.Iterator
        var iteratorB: B.Iterator
        var iteratorC: C.Iterator
        var iteratorD: D.Iterator
        var iteratorE: E.Iterator

        init(
            _ iteratorA: A.Iterator,
            _ iteratorB: B.Iterator,
            _ iteratorC: C.Iterator,
            _ iteratorD: D.Iterator,
            _ iteratorE: E.Iterator
        ) {
            self.iteratorA = iteratorA
            self.iteratorB = iteratorB
            self.iteratorC = iteratorC
            self.iteratorD = iteratorD
            self.iteratorE = iteratorE
        }

        public typealias Element = (
            A.Element,
            B.Element,
            C.Element,
            D.Element,
            E.Element
        )

        var end = false

        public mutating func next() -> Element? {
            if end { return nil }

            guard
                let a = iteratorA.next(),
                let b = iteratorB.next(),
                let c = iteratorC.next(),
                let d = iteratorD.next(),
                let e = iteratorE.next()
            else {
                end = true
                return nil
            }

            return (
                a, b, c, d, e
            )
        }
    }
    
    public func makeIterator() -> Iterator {
        return Iterator(
            a.makeIterator(),
            b.makeIterator(),
            c.makeIterator(),
            d.makeIterator(),
            e.makeIterator()
        )
    }
}
public func zip<A, B, C, D, E, F>(
    _ a: A,
    _ b: B,
    _ c: C,
    _ d: D,
    _ e: E,
    _ f: F
)
    -> Zip6Sequence<A, B, C, D, E, F>
{
    return Zip6Sequence(a, b, c, d, e, f)
}

public func zip<A, B, C, D, E, F, Z>(
    _ a: A,
    _ b: B,
    _ c: C,
    _ d: D,
    _ e: E,
    _ f: F,
    _ fn: (A.Element, B.Element, C.Element, D.Element, E.Element, F.Element) throws -> Z
)
    rethrows -> [Z]
    where
        A: Sequence,
        B: Sequence,
        C: Sequence,
        D: Sequence,
        E: Sequence,
        F: Sequence
{
    return try zip(a, b, c, d, e, f).lazy.map(fn)
}

public struct Zip6Sequence<
    A: Sequence,
    B: Sequence,
    C: Sequence,
    D: Sequence,
    E: Sequence,
    F: Sequence
>: Sequence {

    let a: A
    let b: B
    let c: C
    let d: D
    let e: E
    let f: F

    public init(
        _ a: A,
        _ b: B,
        _ c: C,
        _ d: D,
        _ e: E,
        _ f: F
    ) {
        self.a = a
        self.b = b
        self.c = c
        self.d = d
        self.e = e
        self.f = f
    }

    public struct Iterator: IteratorProtocol {
        var iteratorA: A.Iterator
        var iteratorB: B.Iterator
        var iteratorC: C.Iterator
        var iteratorD: D.Iterator
        var iteratorE: E.Iterator
        var iteratorF: F.Iterator

        init(
            _ iteratorA: A.Iterator,
            _ iteratorB: B.Iterator,
            _ iteratorC: C.Iterator,
            _ iteratorD: D.Iterator,
            _ iteratorE: E.Iterator,
            _ iteratorF: F.Iterator
        ) {
            self.iteratorA = iteratorA
            self.iteratorB = iteratorB
            self.iteratorC = iteratorC
            self.iteratorD = iteratorD
            self.iteratorE = iteratorE
            self.iteratorF = iteratorF
        }

        public typealias Element = (
            A.Element,
            B.Element,
            C.Element,
            D.Element,
            E.Element,
            F.Element
        )

        var end = false

        public mutating func next() -> Element? {
            if end { return nil }

            guard
                let a = iteratorA.next(),
                let b = iteratorB.next(),
                let c = iteratorC.next(),
                let d = iteratorD.next(),
                let e = iteratorE.next(),
                let f = iteratorF.next()
            else {
                end = true
                return nil
            }

            return (
                a, b, c, d, e, f
            )
        }
    }
    
    public func makeIterator() -> Iterator {
        return Iterator(
            a.makeIterator(),
            b.makeIterator(),
            c.makeIterator(),
            d.makeIterator(),
            e.makeIterator(),
            f.makeIterator()
        )
    }
}
public func zip<A, B, C, D, E, F, G>(
    _ a: A,
    _ b: B,
    _ c: C,
    _ d: D,
    _ e: E,
    _ f: F,
    _ g: G
)
    -> Zip7Sequence<A, B, C, D, E, F, G>
{
    return Zip7Sequence(a, b, c, d, e, f, g)
}

public func zip<A, B, C, D, E, F, G, Z>(
    _ a: A,
    _ b: B,
    _ c: C,
    _ d: D,
    _ e: E,
    _ f: F,
    _ g: G,
    _ fn: (A.Element, B.Element, C.Element, D.Element, E.Element, F.Element, G.Element) throws -> Z
)
    rethrows -> [Z]
    where
        A: Sequence,
        B: Sequence,
        C: Sequence,
        D: Sequence,
        E: Sequence,
        F: Sequence,
        G: Sequence
{
    return try zip(a, b, c, d, e, f, g).lazy.map(fn)
}

public struct Zip7Sequence<
    A: Sequence,
    B: Sequence,
    C: Sequence,
    D: Sequence,
    E: Sequence,
    F: Sequence,
    G: Sequence
>: Sequence {

    let a: A
    let b: B
    let c: C
    let d: D
    let e: E
    let f: F
    let g: G

    public init(
        _ a: A,
        _ b: B,
        _ c: C,
        _ d: D,
        _ e: E,
        _ f: F,
        _ g: G
    ) {
        self.a = a
        self.b = b
        self.c = c
        self.d = d
        self.e = e
        self.f = f
        self.g = g
    }

    public struct Iterator: IteratorProtocol {
        var iteratorA: A.Iterator
        var iteratorB: B.Iterator
        var iteratorC: C.Iterator
        var iteratorD: D.Iterator
        var iteratorE: E.Iterator
        var iteratorF: F.Iterator
        var iteratorG: G.Iterator

        init(
            _ iteratorA: A.Iterator,
            _ iteratorB: B.Iterator,
            _ iteratorC: C.Iterator,
            _ iteratorD: D.Iterator,
            _ iteratorE: E.Iterator,
            _ iteratorF: F.Iterator,
            _ iteratorG: G.Iterator
        ) {
            self.iteratorA = iteratorA
            self.iteratorB = iteratorB
            self.iteratorC = iteratorC
            self.iteratorD = iteratorD
            self.iteratorE = iteratorE
            self.iteratorF = iteratorF
            self.iteratorG = iteratorG
        }

        public typealias Element = (
            A.Element,
            B.Element,
            C.Element,
            D.Element,
            E.Element,
            F.Element,
            G.Element
        )

        var end = false

        public mutating func next() -> Element? {
            if end { return nil }

            guard
                let a = iteratorA.next(),
                let b = iteratorB.next(),
                let c = iteratorC.next(),
                let d = iteratorD.next(),
                let e = iteratorE.next(),
                let f = iteratorF.next(),
                let g = iteratorG.next()
            else {
                end = true
                return nil
            }

            return (
                a, b, c, d, e, f, g
            )
        }
    }
    
    public func makeIterator() -> Iterator {
        return Iterator(
            a.makeIterator(),
            b.makeIterator(),
            c.makeIterator(),
            d.makeIterator(),
            e.makeIterator(),
            f.makeIterator(),
            g.makeIterator()
        )
    }
}
