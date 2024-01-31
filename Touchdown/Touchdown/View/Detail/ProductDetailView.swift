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
        static let verticalPadding = 10.0
        static let headerTopPadding = 5.0
        static let ratingSizesViewTopPadding = -15.0
        static let detailBottomPartTopPadding = -105.0
        static let addToCartBottomPadding = 20.0
    }

    // MARK: - Body
    var body: some View {
        VStack(alignment: .leading,
               spacing: VisualConstants.verticalSpacing) {

            // Header
            DetailHeaderView(header: Resources.Strings.Detail.header,
                             title: product.name)
            .padding(.horizontal)
            .padding(.top, VisualConstants.headerTopPadding)

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
                    .padding(.bottom, VisualConstants.verticalPadding)

                // Description
                ScrollView(showsIndicators: false) {
                    Text(product.description)
                        .font(.system(.body, design: .rounded))
                        .foregroundColor(Resources.Colors.Text.primaryColor)
                } //: ScrollView

                // Quantity + Favourite
                DetailQuantityFavouriteView()
                    .padding(.vertical, VisualConstants.verticalPadding)

                // Add to cart
                DetailAddToCartView(product: product)
                    .padding(.bottom, VisualConstants.addToCartBottomPadding)

            } //: VStack - Detail bottom part
            .padding(.horizontal)
            .background(
                Resources.Colors.Background.secondaryColor
                    .clipShape(CustomShape())
                    .padding(.top, VisualConstants.detailBottomPartTopPadding)
            )
        } //: VStack
               .zIndex(0)
               .background(product.backgroundColor)
               .edgesIgnoringSafeArea(.bottom)
               .navigationBarBackButtonHidden()
               .toolbar {
                   ToolbarItem(placement: .navigationBarLeading) {
                       CustomBackButton()
                           .frame(height: Constanst.Size.iconHeight)
                   }
                   ToolbarItem(placement: .navigationBarTrailing) {
                       CartButtonView()
                           .frame(height: Constanst.Size.iconHeight)
                   }
               }
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
