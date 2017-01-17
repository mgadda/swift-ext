//
//  Function.swift
//  SwiftExt
//
//  Created by Matthew Gadda on 1/13/17.
//
//

public func tupled<T1, T2, R>(_ fn: @escaping (T1, T2) -> R) -> ((T1, T2)) -> R {
  return { fn($0.0, $0.1) }
}

public func tupled<T1, T2, T3, R>(_ fn: @escaping (T1, T2, T3) -> R) -> ((T1, T2, T3)) -> R {
  return { fn($0.0, $0.1, $0.2) }
}

public func tupled<T1, T2, T3, T4, R>(_ fn: @escaping (T1, T2, T3, T4) -> R) -> ((T1, T2, T3, T4)) -> R {
  return { fn($0.0, $0.1, $0.2, $0.3) }
}

public func tupled<T1, T2, T3, T4, T5, R>(_ fn: @escaping (T1, T2, T3, T4, T5) -> R) -> ((T1, T2, T3, T4, T5)) -> R {
  return { fn($0.0, $0.1, $0.2, $0.3, $0.4) }
}

public func tupled<T1, T2, T3, T4, T5, T6, R>(_ fn: @escaping (T1, T2, T3, T4, T5, T6) -> R) -> ((T1, T2, T3, T4, T5, T6)) -> R {
  return { fn($0.0, $0.1, $0.2, $0.3, $0.4, $0.5) }
}

public func tupled<T1, T2, T3, T4, T5, T6, T7, R>(_ fn: @escaping (T1, T2, T3, T4, T5, T6, T7) -> R) -> ((T1, T2, T3, T4, T5, T6, T7)) -> R {
  return { fn($0.0, $0.1, $0.2, $0.3, $0.4, $0.5, $0.6) }
}

public func tupled<T1, T2, T3, T4, T5, T6, T7, T8, R>(_ fn: @escaping (T1, T2, T3, T4, T5, T6, T7, T8) -> R) -> ((T1, T2, T3, T4, T5, T6, T7, T8)) -> R {
  return { fn($0.0, $0.1, $0.2, $0.3, $0.4, $0.5, $0.6, $0.7) }
}

public func untupled<T1, T2, R>(_ fn: @escaping ((T1, T2)) -> R) -> (T1, T2) -> R {
  return { fn(($0, $1)) }
}

public func untupled<T1, T2, T3, R>(_ fn: @escaping ((T1, T2, T3)) -> R) -> (T1, T2, T3) -> R {
  return { fn(($0, $1, $2)) }
}

public func untupled<T1, T2, T3, T4, R>(_ fn: @escaping ((T1, T2, T3, T4)) -> R) -> (T1, T2, T3, T4) -> R {
  return { fn(($0, $1, $2, $3)) }
}

public func untupled<T1, T2, T3, T4, T5, R>(_ fn: @escaping ((T1, T2, T3, T4, T5)) -> R) -> (T1, T2, T3, T4, T5) -> R {
  return { fn(($0, $1, $2, $3, $4)) }
}

public func untupled<T1, T2, T3, T4, T5, T6, R>(_ fn: @escaping ((T1, T2, T3, T4, T5, T6)) -> R) -> (T1, T2, T3, T4, T5, T6) -> R {
  return { fn(($0, $1, $2, $3, $4, $5)) }
}

public func untupled<T1, T2, T3, T4, T5, T6, T7, R>(_ fn: @escaping ((T1, T2, T3, T4, T5, T6, T7)) -> R) -> (T1, T2, T3, T4, T5, T6, T7) -> R {
  return { fn(($0, $1, $2, $3, $4, $5, $6)) }
}

public func untupled<T1, T2, T3, T4, T5, T6, T7, T8, R>(_ fn: @escaping ((T1, T2, T3, T4, T5, T6, T7, T8)) -> R) -> (T1, T2, T3, T4, T5, T6, T7, T8) -> R {
  return { fn(($0, $1, $2, $3, $4, $5, $6, $7)) }
}

public func nested<T1, T2, T3, R>(_ fn: @escaping (T1, T2, T3) -> R) -> (((T1, T2), T3)) -> R {
  return { nestedTuple in
    let ((t1, t2), t3) = nestedTuple
    return fn(t1, t2, t3)
  }
}

public func nested<T1, T2, T3, T4, R>(_ fn: @escaping (T1, T2, T3, T4) -> R) -> ((((T1, T2), T3), T4)) -> R {
  return { nestedTuple in
    let (((t1, t2), t3), t4) = nestedTuple
    return fn(t1, t2, t3, t4)
  }
}

public func nested<T1, T2, T3, T4, T5, R>(_ fn: @escaping (T1, T2, T3, T4, T5) -> R) -> (((((T1, T2), T3), T4), T5)) -> R {
  return { nestedTuple in
    let ((((t1, t2), t3), t4), t5) = nestedTuple
    return fn(t1, t2, t3, t4, t5)
  }
}

public func nested<T1, T2, T3, T4, T5, T6, R>(_ fn: @escaping (T1, T2, T3, T4, T5, T6) -> R) -> ((((((T1, T2), T3), T4), T5), T6)) -> R {
  return { nestedTuple in
    let (((((t1, t2), t3), t4), t5), t6) = nestedTuple
    return fn(t1, t2, t3, t4, t5, t6)
  }
}

public func nested<T1, T2, T3, T4, T5, T6, T7, R>(_ fn: @escaping (T1, T2, T3, T4, T5, T6, T7) -> R) -> (((((((T1, T2), T3), T4), T5), T6), T7)) -> R {
  return { nestedTuple in
    let ((((((t1, t2), t3), t4), t5), t6), t7) = nestedTuple
    return fn(t1, t2, t3, t4, t5, t6, t7)
  }
}

public func nested<T1, T2, T3, T4, T5, T6, T7, T8, R>(_ fn: @escaping (T1, T2, T3, T4, T5, T6, T7, T8) -> R) -> ((((((((T1, T2), T3), T4), T5), T6), T7), T8)) -> R {
  return { nestedTuple in
    let (((((((t1, t2), t3), t4), t5), t6), t7), t8) = nestedTuple
    return fn(t1, t2, t3, t4, t5, t6, t7, t8)
  }
}

public func unnested<T1, T2, R>(_ fn: @escaping ((T1, T2)) -> R) -> (T1, T2) -> R {
  return { fn(($0, $1)) }
}

public func unnested<T1, T2, T3, R>(_ fn: @escaping (((T1, T2), T3)) -> R) -> (T1, T2, T3) -> R {
  return { fn((($0, $1), $2)) }
}

public func unnested<T1, T2, T3, T4, R>(_ fn: @escaping ((((T1, T2), T3), T4)) -> R) -> (T1, T2, T3, T4) -> R {
  return { fn(((($0, $1), $2), $3)) }
}


