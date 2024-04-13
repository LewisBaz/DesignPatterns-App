//
//  MainContentView.swift
//  Design Patterns
//
//  Created by Lewis on 06.04.2024.
//

import SwiftUI

struct MainContentView: View {
    
    @Binding var selectedType: DePaType
    
    // MARK: - Body
    
    var body: some View {
        NavigationSplitView {
            VStack {
                HStack {
                    Text("Design Patterns")
                        .font(.largeTitle.bold())
                    Spacer()
                }
                DePaTypeView(DePaTypeFactory.create(.behavioral))
                    .onTapGesture {
                        selectedType = .behavioral
                    }
                DePaTypeView(DePaTypeFactory.create(.structural))
                    .onTapGesture {
                        selectedType = .structural
                    }
                DePaTypeView(DePaTypeFactory.create(.creational))
                    .onTapGesture {
                        selectedType = .creational
                    }
                Spacer()
                VStack {
                    Button {
                         
                    } label: {
                        Text("About app")
                    }
                }
            }
            .padding()
            .navigationSplitViewColumnWidth(min: 240, ideal: 240)
        } detail: {
            DePaTypeListView(DePaTypeListViewFactory.create(selectedType))
        }
//        if SystemManager.os == .mac {
//            .frame(minWidth: 640)
//        }
    }
}

#Preview {
    MainContentView(selectedType: Binding(get: { DePaType.behavioral }, set: { _ in }))
}
