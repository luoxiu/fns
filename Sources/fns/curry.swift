
public func curry<A, B, Z>(
    _ fn: @escaping ((A, B)) -> Z
)
    -> (A) -> (B) -> Z
{
    return { (a: A) -> (B) -> Z in { (b: B) -> Z in fn((a, b)) } }
}

public func curry<A, B, C, Z>(
    _ fn: @escaping ((A, B, C)) -> Z
)
    -> (A) -> (B) -> (C) -> Z
{
    return { (a: A) -> (B) -> (C) -> Z in { (b: B) -> (C) -> Z in { (c: C) -> Z in fn((a, b, c)) } } }
}

public func curry<A, B, C, D, Z>(
    _ fn: @escaping ((A, B, C, D)) -> Z
)
    -> (A) -> (B) -> (C) -> (D) -> Z
{
    return { (a: A) -> (B) -> (C) -> (D) -> Z in { (b: B) -> (C) -> (D) -> Z in { (c: C) -> (D) -> Z in { (d: D) -> Z in fn((a, b, c, d)) } } } }
}

public func curry<A, B, C, D, E, Z>(
    _ fn: @escaping ((A, B, C, D, E)) -> Z
)
    -> (A) -> (B) -> (C) -> (D) -> (E) -> Z
{
    return { (a: A) -> (B) -> (C) -> (D) -> (E) -> Z in { (b: B) -> (C) -> (D) -> (E) -> Z in { (c: C) -> (D) -> (E) -> Z in { (d: D) -> (E) -> Z in { (e: E) -> Z in fn((a, b, c, d, e)) } } } } }
}

public func curry<A, B, C, D, E, F, Z>(
    _ fn: @escaping ((A, B, C, D, E, F)) -> Z
)
    -> (A) -> (B) -> (C) -> (D) -> (E) -> (F) -> Z
{
    return { (a: A) -> (B) -> (C) -> (D) -> (E) -> (F) -> Z in { (b: B) -> (C) -> (D) -> (E) -> (F) -> Z in { (c: C) -> (D) -> (E) -> (F) -> Z in { (d: D) -> (E) -> (F) -> Z in { (e: E) -> (F) -> Z in { (f: F) -> Z in fn((a, b, c, d, e, f)) } } } } } }
}

public func curry<A, B, C, D, E, F, G, Z>(
    _ fn: @escaping ((A, B, C, D, E, F, G)) -> Z
)
    -> (A) -> (B) -> (C) -> (D) -> (E) -> (F) -> (G) -> Z
{
    return { (a: A) -> (B) -> (C) -> (D) -> (E) -> (F) -> (G) -> Z in { (b: B) -> (C) -> (D) -> (E) -> (F) -> (G) -> Z in { (c: C) -> (D) -> (E) -> (F) -> (G) -> Z in { (d: D) -> (E) -> (F) -> (G) -> Z in { (e: E) -> (F) -> (G) -> Z in { (f: F) -> (G) -> Z in { (g: G) -> Z in fn((a, b, c, d, e, f, g)) } } } } } } }
}

