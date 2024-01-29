//
//  ProductDetailView.swift
//  Touchdown
//
//  Created by Pablo Caraballo Gómez on 29/1/24.
//

import SwiftUI

struct ProductDetailView: View {

    // MARK: - Properties
    let product: Product

    private struct VisualConstants {
        static let verticalSpacing = 5.0
    }

    // MARK: - Body
    var body: some View {
        VStack(alignment: .leading,
               spacing: VisualConstants.verticalSpacing) {

            // Navbar
            DetailNavigationBar()
                .padding(.horizontal)
                .padding(.top, UIApplication.shared.keyWindow?.safeAreaInsets.top)

            // Header
            Text(product.name)
            // Detail top part

            // Detail bottom part

            // Ratings + Sizes

            // Quantity + Favourite

            // Add to cart
            Spacer()
        } //: VStack
        .ignoresSafeArea()
        .background(product.backgroundColor)
        .ignoresSafeArea()
    }
}

// MARK: - Preview
struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView(product: Constanst.Data.products[0])
            .previewLayout(.fixed(width: 375,
                                  height: 812))
    }
}
