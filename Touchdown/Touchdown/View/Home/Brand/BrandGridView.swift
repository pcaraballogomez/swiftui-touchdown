//
//  BrandGridView.swift
//  Touchdown
//
//  Created by Pablo Caraballo Gómez on 29/1/24.
//

import SwiftUI

struct BrandGridView: View {

    // MARK: - Properties
    let brands: [Brand]

    private struct VisualConstants {
        static let gridHeight = 200.0
        static let gridPadding = 15.0
    }

    // MARK: - Body
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: Constanst.Layout.gridLayout, spacing: Constanst.Layout.columnSpacing) {
                ForEach(brands) { brand in
                    BrandItemView(brand: brand)
                }
            } //: LazyHGrid
            .frame(height: VisualConstants.gridHeight)
            .padding(VisualConstants.gridPadding)
        } //: ScrollView
    }
}

// MARK: - Preview
struct BrandGridView_Previews: PreviewProvider {
    static var previews: some View {
        BrandGridView(brands: Constanst.Data.brands)
            .previewLayout(.sizeThatFits)
            .background(Resources.Colors.Background.primaryColor)
    }
}
