//
//  CodeSnippetsFactory.swift
//  Design Patterns
//
//  Created by Lewis on 13.04.2024.
//

enum CodeSnippetsFactory {
    
    static func code(for type: DePaType, for pattern: any DesignPattern) -> String {
        switch type {
        case .behavioral:
            switch pattern as? DePaType.Behavioral {
            case .none:
                return ""
            case .some(.chainOfResponsibility):
                return ""
            case .some(.command):
                return CommandPatternCode.code
            case .some(.interpreter):
                return ""
            case .some(.iterator):
                return ""
            case .some(.mediator):
                return ""
            case .some(.memento):
                return ""
            case .some(.observer):
                return ""
            case .some(.state):
                return ""
            case .some(.strategy):
                return ""
            case .some(.templateMethod):
                return ""
            case .some(.visitor):
                return ""
            }
        case .creational:
            return ""
        case .structural:
            return ""
        }
    }
}
