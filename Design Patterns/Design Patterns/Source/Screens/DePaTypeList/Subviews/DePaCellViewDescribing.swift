//
//  DePaCellViewDescribing.swift
//  Design Patterns
//
//  Created by Lewis on 08.04.2024.
//

import SwiftUI

protocol DePaCellViewDescribing {
    var pattern: any DesignPattern {get}
    var name: String {get}
}

struct MockDePaCellViewModel: DePaCellViewDescribing {
    
    var pattern: any DesignPattern = DePaType.Behavioral.state
    
    var name: String {
        pattern.patternName
    }
    
}

struct DePaCellViewModel: DePaCellViewDescribing {
    
    var pattern: any DesignPattern
    
    var name: String
    
}

enum DePaCellViewFactory {
    
    static func create(_ pattern: any DesignPattern) -> DePaCellViewDescribing {
        return DePaCellViewModel(pattern: pattern, name: pattern.patternName)
    }
}
