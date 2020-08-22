//
//  String+AddText.swift
//  MyLocations
//
//  Created by Melissa  Garrett on 8/22/20.
//  Copyright © 2020 MelissaGarrett. All rights reserved.
//

import Foundation

extension String {
    mutating func add(text: String?, separatedBy separator: String = "") {
        if let text = text {
            if !isEmpty {
                self += separator
            }
            self += text
        }
    }
}
