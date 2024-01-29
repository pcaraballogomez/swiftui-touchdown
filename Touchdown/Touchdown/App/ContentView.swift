//
//  ContentView.swift
//  Touchdown
//
//  Created by Pablo Caraballo Gómez on 25/1/24.
//

import SwiftUI

struct ContentView: View {

    // MARK: - Properties
    private struct VisualConstants {
        static let featuredTabViewVerticalPadding = 20.0
        static let featuredTabViewAspectRatio = 1.475
        static let productGridVerticalSpacing = 15.0
        static let productGridPadding = 15.0
    }

    private var gridLayout: [GridItem] = {
        Array(repeating: GridItem(.flexible(),
                                  spacing: Constanst.Layout.rowSpacing),
              count: 2)
    }()

    // MARK: - Body
    var body: some View {
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
                    FeaturedTabView()
                        .padding(.vertical,
                                 VisualConstants.featuredTabViewVerticalPadding)
                        .frame(height: UIScreen.main.bounds.width / VisualConstants.featuredTabViewAspectRatio)

                    CategoryGridView()

                    TitleView(title: Resources.Strings.Category.helmetCategory)

                    LazyVGrid(columns: gridLayout,
                              spacing: VisualConstants.productGridVerticalSpacing) {
                        ForEach(Constanst.Data.products) { product in
                            ProductItemView(product: product)
                        } //: ForEach
                    } //: LazyVGrid
                    .padding(VisualConstants.productGridPadding)
                    
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
}

// MARK: - Preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
