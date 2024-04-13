//
//  ProgLangKeywordsStoreDescribing.swift
//  Design Patterns
//
//  Created by Lewis on 12.04.2024.
//

import SwiftUI

protocol ProgLangKeywordsStoreDescribing {
    var main: ProgLangKeywordsStoreGroup {get}
    var types: ProgLangKeywordsStoreGroup {get}
}

struct ProgLangKeywordsStoreGroup {
    let keywords: [String]
    let color: Color
}
