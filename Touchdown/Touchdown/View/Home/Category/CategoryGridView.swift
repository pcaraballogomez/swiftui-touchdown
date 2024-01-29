//
//  CategoryGridView.swift
//  Touchdown
//
//  Created by Pablo Caraballo Gómez on 27/1/24.
//

import SwiftUI

struct CategoryGridView: View {

    // MARK: - Properties
    let categories: [Category]

    private struct VisualConstants {
        static let gridHeight = 140.0
        static let gridHorizontalPadding = 15.0
        static let gridVerticalPadding = 10.0
    }

    // MARK: - Body
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: Constanst.Layout.gridLayout,
                      spacing: Constanst.Layout.columnSpacing) {
                Section(
                    header: CateogrySectionView(rotateClockwise: false),
                    footer: CateogrySectionView(rotateClockwise: true)
                ) {
                    ForEach(categories) { category in
                        CategoryItemView(category: category)
                    } //: ForEach
                }
            } //: LazyHGrid
            .frame(height: VisualConstants.gridHeight)
            .padding(.horizontal,
                     VisualConstants.gridHorizontalPadding)
            .padding(.vertical,
                     VisualConstants.gridVerticalPadding)
        } //: ScrollView
    }
}

// MARK: - Preview
struct CategoryGridView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryGridView(categories: Constanst.Data.categories)
            .previewLayout(.device)
            .padding()
            .background(Resources.Colors.Background.primaryColor)
    }
}
