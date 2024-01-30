//
//  ContentView.swift
//  Touchdown
//
//  Created by Pablo Caraballo Gómez on 25/1/24.
//

import SwiftUI

struct ContentView: View {

    // MARK: - Properties
    @EnvironmentObject var shop: Shop

    private struct VisualConstants {
        static let featuredTabViewVerticalPadding = 20.0
        static let featuredTabViewAspectRatio = 1.475
    }

    // MARK: - Body
    var body: some View {
        ZStack {
            if let selectedProduct = shop.selectedProduct {
                ProductDetailView(product: selectedProduct)
            } else {
                VStack {
                    NavigationBarView()
                        .padding()
                        .background(Resources.Colors.Background.secondaryColor)
                        .shadow(color: .black.opacity(0.05),
                                radius: 5,
                                x: .zero,
                                y: 5)

                    ScrollView(showsIndicators: false) {
                        VStack {
                            // Featured
                            FeaturedTabView()
                                .padding(.vertical,
                                         VisualConstants.featuredTabViewVerticalPadding)
                                .frame(height: UIScreen.main.bounds.width / VisualConstants.featuredTabViewAspectRatio)

                            // Categories
                            CategoryGridView(categories: Constanst.Data.categories)

                            // Products
                            TitleView(title: Resources.Strings.Category.helmetCategory)
                            ProductGridView(products: Constanst.Data.products) { product in

                                shop.selectedProduct = product
                            }

                            // Brands
                            TitleView(title: Resources.Strings.Category.brandCategory)
                            BrandGridView(brands: Constanst.Data.brands)

                            // Footer
                            FooterView()
                                .padding(.horizontal)
                        } //: VStack
                    } //: ScrollView
                } //: VStack
                .background(
                    Resources.Colors.Background.primaryColor
                        .ignoresSafeArea()
            )
            }
        } //: ZStack
    }
}

// MARK: - Preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(Shop())
    }
}
