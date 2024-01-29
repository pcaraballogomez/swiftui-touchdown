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
        static let ratingSizesViewTopPadding = -15.0
        static let ratingSizesViewBottomPadding = 10.0
        static let detailBottomPartTopPadding = -105.0
    }

    // MARK: - Body
    var body: some View {
        GeometryReader { geometry in
            VStack(alignment: .leading,
                   spacing: VisualConstants.verticalSpacing) {

                // Navbar
                DetailNavigationBar()
                    .padding(.horizontal)
                    .padding(.top, geometry.safeAreaInsets.top)

                // Header
                DetailHeaderView(header: Resources.Strings.Detail.header,
                                 title: product.name)
                    .padding(.horizontal)

                // Detail top part
                DetailTopPartView(title: Resources.Strings.Detail.priceTitle,
                                  text: product.formattedPrice,
                                  image: product.image)
                    .padding(.horizontal)
                    .zIndex(1)

                // Detail bottom part
                VStack {
                    // Ratings + Sizes
                    DetailRatingSizesView()
                        .padding(.top, VisualConstants.ratingSizesViewTopPadding)
                        .padding(.bottom, VisualConstants.ratingSizesViewBottomPadding)

                    // Description
                    ScrollView(showsIndicators: false) {
                        Text(product.description)
                            .font(.system(.body, design: .rounded))
                            .foregroundColor(Resources.Colors.Text.primaryColor)
                    } //: ScrollView

                    // Quantity + Favourite

                    // Add to cart
                    Spacer()
                } //: VStack - Detail bottom part
                .padding(.horizontal)
                .background(
                    Resources.Colors.Background.secondaryColor
                        .clipShape(CustomShape())
                        .padding(.top, VisualConstants.detailBottomPartTopPadding)
                )
            } //: VStack
            .zIndex(0)
            .ignoresSafeArea()
            .background(product.backgroundColor)
            .ignoresSafeArea()
        } //: GeometryReader
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
