//
//  DePaCellView.swift
//  Design Patterns
//
//  Created by Lewis on 08.04.2024.
//

import SwiftUI

struct DePaCellView: View {
    
    @Binding var viewModel: DePaCellViewDescribing
    
    // MARK: - Init
    
    init(_ viewModel: DePaCellViewDescribing) {
        _viewModel = Binding(get: { viewModel }, set: { _ in })
    }
    
    // MARK: - Body
    
    var body: some View {
        NavigationStack {
            NavigationLink {
                DePaView(CommonDePaView(type: viewModel.pattern))
            } label: {
                HStack {
                    Text(viewModel.name)
                        .foregroundStyle(.black)
                        .font(.title2)
                }
                .padding()
                .frame(maxWidth: .infinity)
                .background(SystemManager.os == .ios ? DePaColors.wight_light : .white)
                .clipShape(.buttonBorder)
            }
        }
    }
}

#Preview {
    DePaCellView(MockDePaCellViewModel())
}
