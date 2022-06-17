//
//  AddProductView.swift
//  MakeupRoutine
//

import SwiftUI

struct AddProductView: View {
    @State private var name: String = ""
    @State private var productImage = UIImage(named: "default-avatar")!
    @State private var brand: String = ""
    @State private var selectedType: Category = Category.primer
    @State private var color: String = ""
    @State private var coverage: Coverage = Coverage.none
    @State private var finish: Finish = Finish.none
    @State private var shelfLife: String = ""
    @State private var notes: String = ""
    
    @State private var navigateToProduct = false
    @State private var selectImage = false
    
    @EnvironmentObject var productsVM: ProductsViewModel
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Product Image")) {
                    Button{
                        selectImage.toggle()
                    } label: {
                        Label("Choose from Library", systemImage: "photo.on.rectangle.angled")
                            .foregroundColor(.pink)
                    }
                }
                
                Section() {
                    TextField("Product Name", text: $name)
                    TextField("Brand", text: $brand)
                }
                .disableAutocorrection(true)
                
                Section(header: Text("Type")) {
                    Picker("Type", selection: $selectedType) {
                        ForEach(Category.allCases) { category in
                            Text(category.rawValue)
                                .tag(category)
                        }
                    }
                    .pickerStyle(MenuPickerStyle())
                    .accentColor(.pink)
                }
                
                Section(header: Text("Color")) {
                    TextField("Color", text: $color)
                }
                .disableAutocorrection(true)
                
                Section(header: Text("Coverage")) {
                    Picker("Coverage", selection: $coverage) {
                        ForEach(Coverage.allCases) { coverage in
                            Text(coverage.rawValue)
                                .tag(coverage)
                        }
                    }
                    .pickerStyle(WheelPickerStyle())
                    .frame(height: 50)
                }
                
                Section(header: Text("Finish")) {
                    Picker("Finish", selection: $finish) {
                        ForEach(Finish.allCases) { finish in
                            Text(finish.rawValue)
                                .tag(finish)
                        }
                    }
                    .pickerStyle(WheelPickerStyle())
                    .frame(height: 50)
                }
                
                Section(header: Text("Shelf life")) {
                    HStack {
                        Picker("Shelf life", selection: $shelfLife) {
                            ForEach(1...24, id: \.self) {number in
                                Text("\(number)")
                            }
                        }
                        .pickerStyle(WheelPickerStyle())
                        .frame(width: 200, height: 50)
                        .labelsHidden()
                        
                        Text("months")
                    }
                    
                    //TextField("Shelf life", text: $shelfLife)
                }
                
                Section(header: Text("Notes")) {
                    TextEditor(text: $notes)
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
                    NavigationLink(isActive: $navigateToProduct) {
                        ProductView(product: productsVM.products.sorted{ $0.dateAdded > $1.dateAdded }[0])
                            .navigationBarBackButtonHidden(true)
                    } label: {
                        Button {
                            saveProduct()
                            navigateToProduct.toggle()
                        } label: {
                            Label("Done", systemImage: "checkmark")
                                .foregroundColor(.pink)
                        }
                    }
                    .disabled(name.isEmpty)
                }
            })
            .navigationTitle("Add New Product")
            .navigationBarTitleDisplayMode(.inline)
            .sheet(isPresented: $selectImage, content: {
                PhotoPickerController(avatarImage: $productImage)
            })
        }
        .navigationViewStyle(.stack)
    }
}

struct AddProductView_Previews: PreviewProvider {
    static var previews: some View {
        AddProductView()
            .environmentObject(ProductsViewModel())
    }
}

extension AddProductView {
    private func saveProduct() {
        let now = Date()
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-mm-dd"
        
        let dateAdded = dateFormatter.string(from: now)
        
        let product = Product(name: name, brand: brand, image: "", type: selectedType.rawValue, dateAdded: dateAdded, shelfLife: shelfLife + " months", color: color, coverage: coverage.rawValue, finish: finish.rawValue, notes: notes)
        productsVM.addProduct(product: product)
    }
}
