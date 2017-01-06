//
//  Array.swift
//  Swept
//
//  Created by Matt Gadda on 12/23/16.
//  Copyright © 2016 Matt Gadda. All rights reserved.
//

public extension Array {
  func collect<NewElement>(_ fn: (Element) -> Optional<NewElement>) -> Array<NewElement> {

    var newValues: [NewElement] = []
    for item in self {
      switch fn(item) {
      case let .some(value):
        newValues.append(value)
      default:
        continue
      }
    }
    return newValues
  }
}
