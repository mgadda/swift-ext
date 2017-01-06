//
//  URL.swift
//  Swept
//
//  Created by Matt Gadda on 1/1/17.
//  Copyright © 2017 Matt Gadda. All rights reserved.
//

import Foundation

public extension URL {
  func appendingToBaseName(_ str: String) -> URL {
    return self.deletingLastPathComponent().appendingPathComponent(self.deletingPathExtension().lastPathComponent + " (original)").appendingPathExtension(self.pathExtension)

  }
}
