//
//  Optional.swift
//  Swept
//
//  Created by Matt Gadda on 12/22/16.
//  Copyright © 2016 Matt Gadda. All rights reserved.
//

public extension Optional {
  func filter(_ pred: (Wrapped) -> Bool) -> Optional<Wrapped> {
    switch self {
    case let .some(value):
      if pred(value) {
        return self
      } else {
        return .none
      }
    case .none:
      return .none
    }
  }

  var isDefined: Bool {
    get {
      switch self {
      case .some(_):
        return true
      default:
        return false
      }
    }
  }
}
