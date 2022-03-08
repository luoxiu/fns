
public func flow<A, B, C>(
  _ fnA: @escaping (A) -> B?,
  _ fnB: @escaping (B) -> C?
)
    -> (A) -> C?
{
    return { (a: A) -> C? in
        fnA(a).flatMap(fnB)
    }
}

public func flow<A, B, C>(
  _ fnA: @escaping (A) throws -> B?,
  _ fnB: @escaping (B) throws -> C?
)
    -> (A) throws -> C?
{
    return { (a: A) -> C? in
        try fnA(a).flatMap(fnB)
    }
}
public func flow<A, B, C, D>(
  _ fnA: @escaping (A) -> B?,
  _ fnB: @escaping (B) -> C?,
  _ fnC: @escaping (C) -> D?
)
    -> (A) -> D?
{
    return { (a: A) -> D? in
        fnA(a).flatMap(fnB).flatMap(fnC)
    }
}

public func flow<A, B, C, D>(
  _ fnA: @escaping (A) throws -> B?,
  _ fnB: @escaping (B) throws -> C?,
  _ fnC: @escaping (C) throws -> D?
)
    -> (A) throws -> D?
{
    return { (a: A) -> D? in
        try fnA(a).flatMap(fnB).flatMap(fnC)
    }
}
public func flow<A, B, C, D, E>(
  _ fnA: @escaping (A) -> B?,
  _ fnB: @escaping (B) -> C?,
  _ fnC: @escaping (C) -> D?,
  _ fnD: @escaping (D) -> E?
)
    -> (A) -> E?
{
    return { (a: A) -> E? in
        fnA(a).flatMap(fnB).flatMap(fnC).flatMap(fnD)
    }
}

public func flow<A, B, C, D, E>(
  _ fnA: @escaping (A) throws -> B?,
  _ fnB: @escaping (B) throws -> C?,
  _ fnC: @escaping (C) throws -> D?,
  _ fnD: @escaping (D) throws -> E?
)
    -> (A) throws -> E?
{
    return { (a: A) -> E? in
        try fnA(a).flatMap(fnB).flatMap(fnC).flatMap(fnD)
    }
}
public func flow<A, B, C, D, E, F>(
  _ fnA: @escaping (A) -> B?,
  _ fnB: @escaping (B) -> C?,
  _ fnC: @escaping (C) -> D?,
  _ fnD: @escaping (D) -> E?,
  _ fnE: @escaping (E) -> F?
)
    -> (A) -> F?
{
    return { (a: A) -> F? in
        fnA(a).flatMap(fnB).flatMap(fnC).flatMap(fnD).flatMap(fnE)
    }
}

public func flow<A, B, C, D, E, F>(
  _ fnA: @escaping (A) throws -> B?,
  _ fnB: @escaping (B) throws -> C?,
  _ fnC: @escaping (C) throws -> D?,
  _ fnD: @escaping (D) throws -> E?,
  _ fnE: @escaping (E) throws -> F?
)
    -> (A) throws -> F?
{
    return { (a: A) -> F? in
        try fnA(a).flatMap(fnB).flatMap(fnC).flatMap(fnD).flatMap(fnE)
    }
}
public func flow<A, B, C, D, E, F, G>(
  _ fnA: @escaping (A) -> B?,
  _ fnB: @escaping (B) -> C?,
  _ fnC: @escaping (C) -> D?,
  _ fnD: @escaping (D) -> E?,
  _ fnE: @escaping (E) -> F?,
  _ fnF: @escaping (F) -> G?
)
    -> (A) -> G?
{
    return { (a: A) -> G? in
        fnA(a).flatMap(fnB).flatMap(fnC).flatMap(fnD).flatMap(fnE).flatMap(fnF)
    }
}

public func flow<A, B, C, D, E, F, G>(
  _ fnA: @escaping (A) throws -> B?,
  _ fnB: @escaping (B) throws -> C?,
  _ fnC: @escaping (C) throws -> D?,
  _ fnD: @escaping (D) throws -> E?,
  _ fnE: @escaping (E) throws -> F?,
  _ fnF: @escaping (F) throws -> G?
)
    -> (A) throws -> G?
{
    return { (a: A) -> G? in
        try fnA(a).flatMap(fnB).flatMap(fnC).flatMap(fnD).flatMap(fnE).flatMap(fnF)
    }
}
public func flow<A, B, C, D, E, F, G, H>(
  _ fnA: @escaping (A) -> B?,
  _ fnB: @escaping (B) -> C?,
  _ fnC: @escaping (C) -> D?,
  _ fnD: @escaping (D) -> E?,
  _ fnE: @escaping (E) -> F?,
  _ fnF: @escaping (F) -> G?,
  _ fnG: @escaping (G) -> H?
)
    -> (A) -> H?
{
    return { (a: A) -> H? in
        fnA(a).flatMap(fnB).flatMap(fnC).flatMap(fnD).flatMap(fnE).flatMap(fnF).flatMap(fnG)
    }
}

public func flow<A, B, C, D, E, F, G, H>(
  _ fnA: @escaping (A) throws -> B?,
  _ fnB: @escaping (B) throws -> C?,
  _ fnC: @escaping (C) throws -> D?,
  _ fnD: @escaping (D) throws -> E?,
  _ fnE: @escaping (E) throws -> F?,
  _ fnF: @escaping (F) throws -> G?,
  _ fnG: @escaping (G) throws -> H?
)
    -> (A) throws -> H?
{
    return { (a: A) -> H? in
        try fnA(a).flatMap(fnB).flatMap(fnC).flatMap(fnD).flatMap(fnE).flatMap(fnF).flatMap(fnG)
    }
}
