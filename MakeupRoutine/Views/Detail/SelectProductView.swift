//
//  SelectProductView.swift
//  MakeupRoutine
//
//  Created by Keylin Sanchez on 6/17/22.
//

import SwiftUI

struct SelectProductView: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack {
            NavigationView {
                List {
                    Section(header: Text("Select a Category")) {
                        ForEach(Category.allCases) { category in
                            NavigationLink {
                                CategoryRoutineView(category: category)
                            } label: {
                                Text(category.rawValue)
                            }
                        }
                    }
                }.listStyle(InsetGroupedListStyle())
                
                .navigationTitle("Add product to routine")
                .toolbar(content: {
                    ToolbarItem(placement: .navigationBarLeading) {
                        Button {
                            dismiss()
                        } label: {
                            Label("Cancel", systemImage: "xmark")
                                .foregroundColor(.pink)
                        }
                    }
//                    ToolbarItem {
//                       Button {
//
//                       } label: {
//                            Label("Done", systemImage: "checkmark")
//                                .foregroundColor(.pink)
//                        }
//                    }
                })
            }
            .navigationViewStyle(.stack)
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct SelectProductView_Previews: PreviewProvider {
    static var previews: some View {
        SelectProductView()
    }
}
