//
//  DePaView.swift
//  Design Patterns
//
//  Created by Lewis on 09.04.2024.
//

import SwiftUI

struct DePaView: View {
    
    @Binding var viewModel: DePaViewDescibing
    
    @State var showingCodeView = false
    
    // MARK: - Init
    
    init(_ viewModel: DePaViewDescibing) {
        _viewModel = Binding(get: { viewModel }, set: { _ in })
    }
    
    // MARK: - Body
    
    var body: some View {
        ScrollView {
            VStack {
                Image("command_diagram")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: 400)
                NavigationLink {
                    CodeView(MockCodeView())
                } label: {
                    Text("Show code")
                }
                VStack {
                    HStack {
                        Text("Target")
                            .padding(.bottom, 10)
                            .font(.title2.bold())
                        Spacer()
                    }
                    Text(viewModel.target)
                }
                VStack {
                    HStack {
                        Text("Description")
                            .padding(.top, 10)
                            .padding(.bottom, 10)
                            .font(.title2.bold())
                        Spacer()
                    }
                    Text(viewModel.description)
                }
            }
            .padding()
        }
        .navigationTitle(viewModel.type.patternName)
    }
}

#Preview {
    DePaView(MockDePaView())
}
