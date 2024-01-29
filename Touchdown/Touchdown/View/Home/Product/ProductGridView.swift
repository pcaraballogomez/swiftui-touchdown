//
//  ProductGridView.swift
//  Touchdown
//
//  Created by Pablo Caraballo Gómez on 29/1/24.
//

import SwiftUI

struct ProductGridView: View {

    // MARK: - Properties
    let products: [Product]

    private struct VisualConstants {
        static let productGridVerticalSpacing = 15.0
        static let productGridPadding = 15.0
    }

    // MARK: - Body
    var body: some View {
        LazyVGrid(columns: Constanst.Layout.gridLayout,
                  spacing: VisualConstants.productGridVerticalSpacing) {
            ForEach(Constanst.Data.products) { product in
                ProductItemView(product: product)
            } //: ForEach
        } //: LazyVGrid
        .padding(VisualConstants.productGridPadding)
    }
}

// MARK: - Preview
struct ProductGridView_Previews: PreviewProvider {
    static var previews: some View {
        ProductGridView(products: Constanst.Data.products)
    }
}
