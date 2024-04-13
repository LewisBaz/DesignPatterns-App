//
//  DePaTypeViewDescribing.swift
//  Design Patterns
//
//  Created by Lewis on 07.04.2024.
//

import SwiftUI

protocol DePaTypeViewDescribing {
    var type: DePaType {get}
    var title: String {get}
    var image: Image {get}
    var color: Color {get}
}

struct BehavioralDePaViewModel: DePaTypeViewDescribing {
    
    var type: DePaType = .behavioral
    
    var title: String {
        return type.getTitle()
    }
    
    var image: Image {
        return type.getImage()
    }
    
    var color: Color = .orange
    
}

struct CreationalDePaViewModel: DePaTypeViewDescribing {
    
    var type: DePaType = .creational
    
    var title: String {
        return type.getTitle()
    }
    
    var image: Image {
        return type.getImage()
    }
    
    var color: Color = .green
    
}

struct StructuralDePaViewModel: DePaTypeViewDescribing {
    
    var type: DePaType = .structural
    
    var title: String {
        return type.getTitle()
    }
    
    var image: Image {
        return type.getImage()
    }
    
    var color: Color = .blue
    
}

struct MockDePaViewModel: DePaTypeViewDescribing {
    
    var type: DePaType = .behavioral
    
    var title: String = "Design Pattern"
    
    var image: Image = Image(.cloud)
    
    var color: Color = .green
    
}

enum DePaTypeFactory {
    
    static func create(_ type: DePaType) -> DePaTypeViewDescribing {
        switch type {
        case .behavioral:
            return BehavioralDePaViewModel()
        case .creational:
            return CreationalDePaViewModel()
        case .structural:
            return StructuralDePaViewModel()
        }
    }
}
