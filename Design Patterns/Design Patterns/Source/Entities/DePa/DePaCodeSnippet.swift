//
//  DePaCodeSnippet.swift
//  Design Patterns
//
//  Created by Lewis on 13.04.2024.
//

extension DePaType.Behavioral {
    
    var code: String {
        return CodeSnippetsFactory.code(for: .behavioral, for: self)
    }
}

extension DePaType.Creational {
    
    var code: String {
        return CodeSnippetsFactory.code(for: .creational, for: self)
    }
}

extension DePaType.Structural {
    
    var code: String {
        return CodeSnippetsFactory.code(for: .structural, for: self)
    }
}
