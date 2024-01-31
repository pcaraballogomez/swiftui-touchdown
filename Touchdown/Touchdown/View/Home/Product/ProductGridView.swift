//
//  ProductGridView.swift
//  Touchdown
//
//  Created by Pablo Caraballo Gómez on 29/1/24.
//

import SwiftUI

struct ProductGridView<Content: View>: View {

    // MARK: - Properties
    let products: [Product]
    let content: (Product) -> Content

    // MARK: - Body
    var body: some View {
        LazyVGrid(columns: Constanst.Layout.gridLayout,
                  spacing: 15.0) {
            ForEach(Constanst.Data.products) { product in
                content(product)
            } //: ForEach
        } //: LazyVGrid
        .padding(15.0)
    }
}

// MARK: - Preview
struct ProductGridView_Previews: PreviewProvider {
    static var previews: some View {
        ProductGridView(products: Constanst.Data.products) { product in
            ProductItemView(product: product)
        }
    }
}
