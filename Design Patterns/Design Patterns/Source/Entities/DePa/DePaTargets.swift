//
//  DePaTargets.swift
//  Design Patterns
//
//  Created by Lewis on 09.04.2024.
//

extension DePaType.Behavioral {
    
    var target: String {
        switch self {
        case .command:
            return "The Command pattern encapsulates a request as an object, thereby letting users parameterize clients with queues, requests, operations, and also allows supporting undoable operations. It decouples the object that invokes the operation from the one that knows how to perform it."
        default:
            return "-"
        }
    }
}

extension DePaType.Creational {
    
    var target: String {
        return "-"
    }
}

extension DePaType.Structural {
    
    var target: String {
        return "-"
    }
}
