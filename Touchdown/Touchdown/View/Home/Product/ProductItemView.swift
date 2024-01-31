//
//  ProductItemView.swift
//  Touchdown
//
//  Created by Pablo Caraballo Gómez on 29/1/24.
//

import SwiftUI

struct ProductItemView: View {

    // MARK: - Properties
    let product: Product

    private struct VisualConstants {
        static let verticalSpacing = 6.0
        static let imagePadding = 10.0
        static let imageCornerRadius = 12.0
    }

    // MARK: - Body
    var body: some View {
        VStack(alignment: .leading, spacing: VisualConstants.verticalSpacing) {
            ZStack {
                Image(product.image)
                    .resizable()
                    .scaledToFit()
                    .padding(VisualConstants.imagePadding)
            } //: ZStack
            .background(product.backgroundColor)
            .cornerRadius(VisualConstants.imageCornerRadius)

            Text(product.name)
                .font(.title3)
                .fontWeight(.black)
                .foregroundColor(.black)

            Text(product.formattedPrice)
                .fontWeight(.semibold)
                .foregroundColor(Resources.Colors.Text.primaryColor)
        } //: VStack
    }
}

// MARK: - Preview
struct ProductItemView_Previews: PreviewProvider {
    static var previews: some View {
        ProductItemView(product: Constanst.Data.products[0])
            .previewLayout(.fixed(width: 200,
                                  height: 300))
            .padding()
            .background(Resources.Colors.Background.primaryColor)
    }
}
