//
//  SystemManager.swift
//  Design Patterns
//
//  Created by Lewis on 09.04.2024.
//

enum OS {
    case mac
    case ios
}

enum SystemManager {
    
    static var os: OS {
        #if os(iOS)
            return .ios
        #else
            return .mac
        #endif
    }
}
