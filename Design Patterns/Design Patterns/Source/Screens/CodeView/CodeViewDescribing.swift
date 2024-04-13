//
//  CodeViewDescribing.swift
//  Design Patterns
//
//  Created by Lewis on 12.04.2024.
//

protocol CodeViewDescribing {
    var type: any DesignPattern {get}
    var lang: ProgLang {get}
    var code: String {get}
    var keywords: ProgLangKeywordsStoreDescribing {get}
}

struct MockCodeView: CodeViewDescribing {
    
    private static let lang = ProgLang.swift
    
    var type: any DesignPattern = DePaType.Behavioral.command
    
    var lang: ProgLang = lang
    
    var code: String {
        type.code
    }
    
    var keywords: ProgLangKeywordsStoreDescribing = ProgLangKeywords.keywords(for: lang)
}

struct CommonCodeView: CodeViewDescribing {
    
    var type: any DesignPattern
    
    var lang: ProgLang
    
    var code: String {
        type.code
    }
    
    var keywords: ProgLangKeywordsStoreDescribing {
        ProgLangKeywords.keywords(for: lang)
    }
    
}
