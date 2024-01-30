//
//  DetailAddToCartView.swift
//  Touchdown
//
//  Created by Pablo Caraballo Gómez on 30/1/24.
//

import SwiftUI

struct DetailAddToCartView: View {

    // MARK: - Properties
    let product: Product

    private struct VisualConstants {
        static let padding = 15.0
    }

    // MARK: - Body
    var body: some View {
        Button {

        } label: {
            Text(Resources.Strings.Detail.addToCartText.uppercased())
                .padding(VisualConstants.padding)
                .font(.system(.title2, design: .rounded))
                .fontWeight(.bold)
                .foregroundColor(Resources.Colors.Text.tertiaryColor)
                .frame(maxWidth: .infinity)
        }
        .background(product.backgroundColor)
        .clipShape(Capsule())
    }
}

// MARK: - Preview
struct DetailAddToCartView_Previews: PreviewProvider {
    static var previews: some View {
        DetailAddToCartView(product: Constanst.Data.products[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
