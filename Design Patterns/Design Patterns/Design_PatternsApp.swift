//
//  Design_PatternsApp.swift
//  Design Patterns
//
//  Created by Lewis on 06.04.2024.
//

import SwiftUI

@main
struct Design_PatternsApp: App {
    var body: some Scene {
        WindowGroup {
            MainContentView(selectedType: Binding(get: { .behavioral }, set: { _ in }))
        }
    }
}
