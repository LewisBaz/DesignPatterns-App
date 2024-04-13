//
//  DePaUMLImage.swift
//  Design Patterns
//
//  Created by Lewis on 13.04.2024.
//

extension DePaType.Behavioral {
    
    var umlImageName: String {
        switch self {
        case .command:
            return "command_diagram"
        default:
            return "-"
        }
    }
}

extension DePaType.Creational {
    
    var umlImageName: String {
        return ""
    }
}

extension DePaType.Structural {
    
    var umlImageName: String {
        return ""
    }
}

