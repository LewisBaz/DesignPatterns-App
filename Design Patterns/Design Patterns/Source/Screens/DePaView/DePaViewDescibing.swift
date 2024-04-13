//
//  DePaViewDescibing.swift
//  Design Patterns
//
//  Created by Lewis on 09.04.2024.
//

protocol DePaViewDescibing {
    var type: any DesignPattern {get}
    var target: String {get}
    var description: String {get}
//    var uml: Any? {get}
//    var code: Any? {get}
}

struct MockDePaView: DePaViewDescibing {
    
    var type: any DesignPattern = DePaType.Behavioral.command
    
    var target: String {
        type.target
    }
    
    var description: String {
        type.description
    }
    
}
