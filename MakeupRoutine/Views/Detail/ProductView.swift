//
//  ProductView.swift
//  MakeupRoutine
//
//  Created by Keylin Sanchez on 5/27/22.
//

import SwiftUI

struct ProductView: View {
    var product: Product
    
    var body: some View {
        ScrollView {
            AsyncImage(url: URL(string: product.image)){ image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
    
            } placeholder: {
                Image(systemName: "photo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100, alignment: .center)
                    .foregroundColor(.white.opacity(0.7))
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    
            }
            .frame(height: 300)
            .background(LinearGradient(gradient: Gradient(colors: [Color(.gray).opacity(0.3), Color(.gray)]), startPoint: .top, endPoint: .bottom))
            
            VStack(spacing: 30) {
                Text(product.name)
                    .font(.largeTitle)
                    .bold()
                    .multilineTextAlignment(.center)
                
                VStack(alignment: .leading, spacing: 30) {
                    Text(product.brand)
                    
                    if !product.color.isEmpty {
                        VStack(alignment: .leading, spacing: 20) {
                            Text("Color")
                                .font(.headline)
                            
                            Text(product.color)
                        }
                    }
                    
                    if !product.coverage.isEmpty {
                        VStack(alignment: .leading, spacing: 20) {
                            Text("Coverage")
                                .font(.headline)
                            
                            Text(product.coverage)
                        }
                    }
                    
                    if !product.dateAdded.isEmpty {
                        VStack(alignment: .leading, spacing: 20) {
                            Text("Date added")
                                .font(.headline)
                            
                            Text(product.dateAdded)
                        }
                    }
                    
                    if !product.shelfLife.isEmpty {
                        VStack(alignment: .leading, spacing: 20) {
                            Text("Shelf life")
                                .font(.headline)
                            
                            Text(product.shelfLife)
                        }
                    }
                    
                    if !product.notes.isEmpty {
                        VStack(alignment: .leading, spacing: 20) {
                            Text("Notes")
                                .font(.headline)
                            
                            Text(product.notes)
                        }
                    }
                }
                .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
        }
        .ignoresSafeArea(.container, edges: .top)
    }
}

struct ProductView_Previews: PreviewProvider {
    static var previews: some View {
        ProductView(product: Product.all[0])
    }
}
