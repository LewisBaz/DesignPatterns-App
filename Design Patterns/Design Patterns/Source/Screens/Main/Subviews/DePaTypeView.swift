//
//  DePaTypeView.swift
//  Design Patterns
//
//  Created by Lewis on 07.04.2024.
//

import SwiftUI

struct DePaTypeView: View {
    
    @State var viewModel: DePaTypeViewDescribing
    
    // MARK: - Init
    
    init(_ viewModel: DePaTypeViewDescribing) {
        _viewModel = State(initialValue: viewModel)
    }
    
    // MARK: - Body
    
    var body: some View {
        NavigationLink {
            DePaTypeListView(DePaTypeListViewFactory.create(viewModel.type))
        } label: {
            HStack {
                viewModel.image
                    .foregroundStyle(.white)
                    .imageScale(.large)
                Text(viewModel.title)
                    .foregroundStyle(.white)
                    .font(.title2)
            }
            .padding(30)
            .frame(maxWidth: .infinity)
            .background(viewModel.color)
        }
        .background(.white)
        .cornerRadius(12)
        .buttonStyle(.plain)
    }
}

#Preview {
    DePaTypeView(MockDePaViewModel())
}
