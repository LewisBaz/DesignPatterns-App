//
//  CodeView.swift
//  Design Patterns
//
//  Created by Lewis on 09.04.2024.
//

import SwiftUI

struct CodeView: View {
    
    @Binding var viewModel: CodeViewDescribing
    
    // MARK: - Init
    
    init(_ viewModel: CodeViewDescribing) {
        _viewModel = Binding(get: { viewModel }, set: { _ in })
    }
    
    // MARK: - Body
    
    var body: some View {
        ScrollView {
            ForEach(viewModel.code.split(separator: "\n"), id: \.self) { line in
                HStack {
                    Text(String(line)) { string in
                        for word in line.split(separator: " ") {
                            let stringWord = String(word)
                            let main = viewModel.keywords.main
                            let types = viewModel.keywords.types

                            for keyword in main.keywords {
                                if let range = string.range(of: keyword) {
                                    string[range].foregroundColor = main.color
                                }
                            }
                            
                            for keyword in types.keywords {
                                if let range = string.range(of: keyword) {
                                    string[range].foregroundColor = types.color
                                }
                            }
                        }
                    }
                    Spacer()
                }
            }
            .padding(4)
        }
        .navigationTitle("Code snippet")
    }
}

#Preview {
    CodeView(MockCodeView())
}
