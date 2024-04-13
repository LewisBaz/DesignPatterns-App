//
//  ProgLangKeywords.swift
//  Design Patterns
//
//  Created by Lewis on 12.04.2024.
//

import SwiftUI

enum ProgLangKeywords {
    
    static func keywords(for lang: ProgLang) -> ProgLangKeywordsStoreDescribing {
        switch lang {
        case .swift:
            SwiftProgLangKeywordsStore()
        }
    }
}

struct SwiftProgLangKeywordsStore: ProgLangKeywordsStoreDescribing {
    
    var main: ProgLangKeywordsStoreGroup {
        .init(keywords: ["func", "init", "final", "class", "struct", "return", "let", "var", "required", "self", "protocol", "enum"], color: .init(hex: "D15492"))
    }
    
    var types: ProgLangKeywordsStoreGroup {
        .init(keywords: ["String", "Bool", "Int", "Double", "Float"], color: .init(hex: "3D1D81"))
    }
}
