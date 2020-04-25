//
//  ExtensionFloat.swift
//  calculatorApp
//
//  Created by Earth on 25/4/2563 BE.
//  Copyright © 2563 Earth. All rights reserved.
//

import Foundation

extension Float {
    var clean: String {
       return self.truncatingRemainder(dividingBy: 1) == 0 ? String(format: "%.0f", self) : String(self)
    }
}
