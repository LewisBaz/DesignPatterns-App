//
//  TextExtensions.swift
//  Design Patterns
//
//  Created by Lewis on 12.04.2024.
//

import SwiftUI

extension Text {
    
    init(_ string: String, configure: ((inout AttributedString) -> Void)) {
        var attributedString = AttributedString(string)
        configure(&attributedString)
        self.init(attributedString)
    }
}
