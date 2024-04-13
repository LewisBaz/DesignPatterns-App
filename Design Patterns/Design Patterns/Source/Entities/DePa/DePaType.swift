//
//  DePaType.swift
//  Design Patterns
//
//  Created by Lewis on 07.04.2024.
//

import SwiftUI

enum DePaType {
    case behavioral
    case creational
    case structural
    
    func getTitle() -> String {
        switch self {
        case .behavioral:
            return "Behavioral"
        case .creational:
            return "Creational"
        case .structural:
            return "Structural"
        }
    }
    
    func getImage() -> Image {
        switch self {
        case .behavioral:
            return Image(.lightbulb)
        case .creational:
            return Image(.plus.viewfinder)
        case .structural:
            return Image(.square.grid_3x3)
        }
    }
    
    func getPatterns() -> Binding<[any DesignPattern]> {
        switch self {
        case .behavioral:
            return Binding { DePaType.Behavioral.allCases } set: { _ in }
        case .creational:
            return Binding { DePaType.Creational.allCases } set: { _ in }
        case .structural:
            return Binding { DePaType.Structural.allCases } set: { _ in }
        }
    }
}
