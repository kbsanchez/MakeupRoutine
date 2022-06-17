//
//  AddRoutineView.swift
//  MakeupRoutine
//

import SwiftUI

struct AddRoutineView: View {
    @State private var name: String = ""
    @State private var routineImage = UIImage(named: "default-avatar")!
    @State private var selectImage = false
    @State private var selectProduct = false
    
    @State private var routineTags: [Tags.RawValue] = [
        ""]
    
    @State private var routineProducts: [Product] = [
        Product(
        name: "Hydro Grip Hydrating Makeup Primer",
        brand: "Milk Makeup",
        image: "https://www.sephora.com/productimages/sku/s2169423-main-zoom.jpg?imwidth=612",
        type: "Primer",
        dateAdded: "05/21/2022",
        shelfLife: "24 months",
        color: "Clear",
        coverage: "N/A",
        finish: "Radiant",
        notes: "This silicone-free, oil-free makeup primer goes on clear to work across all skin tones and types. The lightweight grippy texture helps foundation go on smoothly and stay locked on all day. The airless container keeps formula fresh and ensures all product gets used."
    )]
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Name this routine")) {
                    TextField("Product Name", text: $name)
                }
                
                Section(header: Text("Add products to this routine")) {
                    EditButton()
                        .accentColor(.pink)
                    
                    List {
                        ForEach(routineProducts, id: \.self) { routineProduct in
                            Text(routineProduct.name)
                        }
                        .onDelete(perform: delete)
                        .onMove(perform: move)
                    }
                    
                    Button(action: {
                        selectProduct.toggle()
                    }, label: {
                        Label("Add", systemImage: "plus.circle.fill")
                            .foregroundColor(.green)
                            .labelsHidden()
                    })
                
                }
                
                Section(header: Text("Product Image")) {
                    Button{
                        selectImage.toggle()
                    } label: {
                        Label("Choose from Library", systemImage: "photo.on.rectangle.angled")
                            .foregroundColor(.pink)
                    }
                }
                
                Section(header: Text("Tags")) {
                    //List {
                        //HStack {
                            ForEach(Tags.allCases) { tag in
                                Button(action: {
                                    if routineTags.contains(tag.rawValue) {
                                        
                                    } else {
                                        
                                    }
                                }, label: {
                                    if routineTags.contains(tag.rawValue) {
                                        Label(tag.rawValue, systemImage: "checkmark.circle.fill")
                                            .padding()
                                            .background(.pink)
                                            .foregroundColor(.white)
                                            .clipShape(Capsule())
                                            .font(.caption2)
                                    } else {
                                        Label(tag.rawValue, systemImage: "checkmark.circle")
                                            .padding()
                                            .buttonStyle(.outline)
                                            .foregroundColor(.white)
                                            .clipShape(Capsule())
                                            .font(.caption2)
                                    }
                                })
                            }
                        //}
                    //}
                }
            }
            .toolbar(content: {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button {
                        dismiss()
                    } label: {
                        Label("Cancel", systemImage: "xmark")
                            .foregroundColor(.pink)
                    }
                }
                ToolbarItem {
                    Button {
                        
                    } label: {
                        Label("Done", systemImage: "checkmark")
                            .foregroundColor(.pink)
                    }
                }
            })
            .navigationTitle("New Routine")
            .sheet(isPresented: $selectImage, content: {
                PhotoPickerController(avatarImage: $routineImage)
            })
            .sheet(isPresented: $selectProduct, content: {
                SelectProductView()
            })
        }
        .navigationViewStyle(.stack)
        .navigationBarTitleDisplayMode(.inline)
    }
    
    func delete(indexSet: IndexSet) {
        routineProducts.remove(atOffsets: indexSet)
    }
    
    func move(indices: IndexSet, newOffset: Int) {
        routineProducts.move(fromOffsets: indices, toOffset: newOffset)
    }
    
}

struct AddRoutineView_Previews: PreviewProvider {
    static var previews: some View {
        AddRoutineView()
    }
}
