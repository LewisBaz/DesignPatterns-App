//
//  DePaTypeListView.swift
//  Design Patterns
//
//  Created by Lewis on 07.04.2024.
//

import SwiftUI

struct DePaTypeListView: View {
    
    @Binding var viewModel: DePaTypeListViewDescribing
    
    // MARK: - Init
    
    init(_ viewModel: DePaTypeListViewDescribing) {
        _viewModel = Binding(get: { viewModel }, set: { _ in })
    }
    
    // MARK: - Body
    
    var body: some View {
        ScrollView {
            VStack {
                ForEach(viewModel.patterns, id: \.id) { pattern in
                    Button(action: {
                        
                    }, label: {
                        DePaCellView(DePaCellViewFactory.create(pattern.wrappedValue))
                            .font(.title3)
                    })
                    .buttonStyle(.plain)
                }
                .foregroundStyle(.primary)
                Spacer()
            }
            .padding()
            .navigationTitle(viewModel.title)
        }
    }
}

#Preview {
    DePaTypeListView(MockDePaTypeListViewModel())
}
