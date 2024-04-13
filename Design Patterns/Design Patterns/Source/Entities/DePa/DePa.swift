//
//  DePa.swift
//  Design Patterns
//
//  Created by Lewis on 07.04.2024.
//

protocol DesignPattern: Hashable {
    var id: Int {get}
    var patternName: String {get set}
    var target: String {get}
    var description: String {get}
}

extension DePaType {
    
    enum Behavioral: Int, DesignPattern, CaseIterable {
        case chainOfResponsibility
        case command
        case interpreter
        case iterator
        case mediator
        case memento
        case observer
        case state
        case strategy
        case templateMethod
        case visitor
        
        var id: Int {
            return rawValue
        }
        
        var patternName: String {
            get {
                switch self {
                case .chainOfResponsibility:
                    return "Chain Of Responsibility"
                case .command:
                    return "Command"
                case .interpreter:
                    return "Interpreter"
                case .iterator:
                    return "Iterator"
                case .mediator:
                    return "Mediator"
                case .memento:
                    return "Memento"
                case .observer:
                    return "Observer"
                case .state:
                    return "State"
                case .strategy:
                    return "Strategy"
                case .templateMethod:
                    return "Template Method"
                case .visitor:
                    return "Visitor"
                }
            }
            set {
                
            }
        }
    }
    
    enum Creational: Int, DesignPattern, CaseIterable {
        case abstractFactory
        case builder
        case factoryMethod
        case monostate
        case prototype
        case singleton
        
        var id: Int {
            return rawValue
        }
        
        var patternName: String {
            get {
                switch self {
                case .abstractFactory:
                    return "Abstract Factory"
                case .builder:
                    return "Builder"
                case .factoryMethod:
                    return "Factory Method"
                case .monostate:
                    return "Monostate"
                case .prototype:
                    return "Prototype"
                case .singleton:
                    return "Singleton"
                }
            }
            set {
                
            }
        }
    }
    
    enum Structural: Int, DesignPattern, CaseIterable {
        case adapter
        case bridge
        case composite
        case decorator
        case facade
        case flyweight
        case protectionProxy
        case virtualProxy
        
        var id: Int {
            return rawValue
        }
        
        var patternName: String {
            get {
                switch self {
                case .adapter:
                    return "Adapter"
                case .bridge:
                    return "Bridge"
                case .composite:
                    return "Composite"
                case .decorator:
                    return "Decorator"
                case .facade:
                    return "Facade"
                case .flyweight:
                    return "Flyweight"
                case .protectionProxy:
                    return "Protection Proxy"
                case .virtualProxy:
                    return "Virtual Proxy"
                }
            }
            set {
                
            }
        }
    }
}
