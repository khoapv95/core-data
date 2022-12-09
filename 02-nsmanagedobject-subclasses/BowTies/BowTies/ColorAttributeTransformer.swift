//
//  ColorAttributeTransformer.swift
//  BowTies
//
//  Created by Icebreaker on 09/12/2022.
//  Copyright © 2022 Razeware. All rights reserved.
//

import UIKit

class ColorAttributeTransformer: NSSecureUnarchiveFromDataTransformer {

  override static var allowedTopLevelClasses: [AnyClass] {
    [UIColor.self]
  }

  static func register() {
    let className = String(describing: ColorAttributeTransformer.self)
    let name = NSValueTransformerName(className)

    let transformer = ColorAttributeTransformer()
    ValueTransformer.setValueTransformer(transformer, forName: name)
  }
}
