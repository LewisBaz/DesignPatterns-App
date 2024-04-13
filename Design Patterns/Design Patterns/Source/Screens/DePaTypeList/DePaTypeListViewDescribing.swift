//
//  DePaTypeListViewDescribing.swift
//  Design Patterns
//
//  Created by Lewis on 07.04.2024.
//

import SwiftUI

protocol DePaTypeListViewDescribing {
    var type: DePaType {get}
    var title: String {get}
    var patterns: Binding<[any DesignPattern]> {get}
}

struct BehavioralDePaTypeListViewModel: DePaTypeListViewDescribing {
    
    var type: DePaType = .behavioral
    
    var title: String {
        return type.getTitle()
    }
    
    var patterns: Binding<[any DesignPattern]> {
        return type.getPatterns()
    }
    
}

struct CreationalDePaTypeListViewModel: DePaTypeListViewDescribing {
    
    var type: DePaType = .creational
    
    var title: String {
        return type.getTitle()
    }
    
    var patterns: Binding<[any DesignPattern]> {
        return type.getPatterns()
    }
    
}

struct StructuralDePaTypeListViewModel: DePaTypeListViewDescribing {
    
    var type: DePaType = .structural
    
    var title: String {
        return type.getTitle()
    }
    
    var patterns: Binding<[any DesignPattern]> {
        return type.getPatterns()
    }
    
}

struct MockDePaTypeListViewModel: DePaTypeListViewDescribing {
    
    var type: DePaType = .behavioral
    
    var title: String = "Design Pattern"
    
    var patterns: Binding<[any DesignPattern]> {
        return Binding {
            [DePaType.Behavioral.command, DePaType.Behavioral.memento, DePaType.Behavioral.state]
        } set: { _ in
            
        }

//        return [DePaType.Behavioral.command, DePaType.Behavioral.memento, DePaType.Behavioral.state]
    }
}

enum DePaTypeListViewFactory {
    
    static func create(_ type: DePaType) -> DePaTypeListViewDescribing {
        switch type {
        case .behavioral:
            return BehavioralDePaTypeListViewModel()
        case .creational:
            return CreationalDePaTypeListViewModel()
        case .structural:
            return StructuralDePaTypeListViewModel()
        }
    }
}
