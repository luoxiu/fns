
public func pipe<A, B, C>(
  _ fnA: @escaping (A) -> B,
  _ fnB: @escaping (B) -> C
)
    -> (A) -> C
{
    return { (a: A) -> C in
        fnB(fnA(a))
    }
}

public func pipe<A, B, C>(
  _ fnA: @escaping (A) throws -> B,
  _ fnB: @escaping (B) throws -> C
)
    -> (A) throws -> C
{
    return { (a: A) -> C in
        try fnB(fnA(a))
    }
}

public func pipe<A, B, C, D>(
  _ fnA: @escaping (A) -> B,
  _ fnB: @escaping (B) -> C,
  _ fnC: @escaping (C) -> D
)
    -> (A) -> D
{
    return { (a: A) -> D in
        fnC(fnB(fnA(a)))
    }
}

public func pipe<A, B, C, D>(
  _ fnA: @escaping (A) throws -> B,
  _ fnB: @escaping (B) throws -> C,
  _ fnC: @escaping (C) throws -> D
)
    -> (A) throws -> D
{
    return { (a: A) -> D in
        try fnC(fnB(fnA(a)))
    }
}

public func pipe<A, B, C, D, E>(
  _ fnA: @escaping (A) -> B,
  _ fnB: @escaping (B) -> C,
  _ fnC: @escaping (C) -> D,
  _ fnD: @escaping (D) -> E
)
    -> (A) -> E
{
    return { (a: A) -> E in
        fnD(fnC(fnB(fnA(a))))
    }
}

public func pipe<A, B, C, D, E>(
  _ fnA: @escaping (A) throws -> B,
  _ fnB: @escaping (B) throws -> C,
  _ fnC: @escaping (C) throws -> D,
  _ fnD: @escaping (D) throws -> E
)
    -> (A) throws -> E
{
    return { (a: A) -> E in
        try fnD(fnC(fnB(fnA(a))))
    }
}

public func pipe<A, B, C, D, E, F>(
  _ fnA: @escaping (A) -> B,
  _ fnB: @escaping (B) -> C,
  _ fnC: @escaping (C) -> D,
  _ fnD: @escaping (D) -> E,
  _ fnE: @escaping (E) -> F
)
    -> (A) -> F
{
    return { (a: A) -> F in
        fnE(fnD(fnC(fnB(fnA(a)))))
    }
}

public func pipe<A, B, C, D, E, F>(
  _ fnA: @escaping (A) throws -> B,
  _ fnB: @escaping (B) throws -> C,
  _ fnC: @escaping (C) throws -> D,
  _ fnD: @escaping (D) throws -> E,
  _ fnE: @escaping (E) throws -> F
)
    -> (A) throws -> F
{
    return { (a: A) -> F in
        try fnE(fnD(fnC(fnB(fnA(a)))))
    }
}

public func pipe<A, B, C, D, E, F, G>(
  _ fnA: @escaping (A) -> B,
  _ fnB: @escaping (B) -> C,
  _ fnC: @escaping (C) -> D,
  _ fnD: @escaping (D) -> E,
  _ fnE: @escaping (E) -> F,
  _ fnF: @escaping (F) -> G
)
    -> (A) -> G
{
    return { (a: A) -> G in
        fnF(fnE(fnD(fnC(fnB(fnA(a))))))
    }
}

public func pipe<A, B, C, D, E, F, G>(
  _ fnA: @escaping (A) throws -> B,
  _ fnB: @escaping (B) throws -> C,
  _ fnC: @escaping (C) throws -> D,
  _ fnD: @escaping (D) throws -> E,
  _ fnE: @escaping (E) throws -> F,
  _ fnF: @escaping (F) throws -> G
)
    -> (A) throws -> G
{
    return { (a: A) -> G in
        try fnF(fnE(fnD(fnC(fnB(fnA(a))))))
    }
}

public func pipe<A, B, C, D, E, F, G, H>(
  _ fnA: @escaping (A) -> B,
  _ fnB: @escaping (B) -> C,
  _ fnC: @escaping (C) -> D,
  _ fnD: @escaping (D) -> E,
  _ fnE: @escaping (E) -> F,
  _ fnF: @escaping (F) -> G,
  _ fnG: @escaping (G) -> H
)
    -> (A) -> H
{
    return { (a: A) -> H in
        fnG(fnF(fnE(fnD(fnC(fnB(fnA(a)))))))
    }
}

public func pipe<A, B, C, D, E, F, G, H>(
  _ fnA: @escaping (A) throws -> B,
  _ fnB: @escaping (B) throws -> C,
  _ fnC: @escaping (C) throws -> D,
  _ fnD: @escaping (D) throws -> E,
  _ fnE: @escaping (E) throws -> F,
  _ fnF: @escaping (F) throws -> G,
  _ fnG: @escaping (G) throws -> H
)
    -> (A) throws -> H
{
    return { (a: A) -> H in
        try fnG(fnF(fnE(fnD(fnC(fnB(fnA(a)))))))
    }
}

