//
//  CategoryItemView.swift
//  Touchdown
//
//  Created by Pablo Caraballo Gómez on 27/1/24.
//

import SwiftUI

struct CategoryItemView: View {

    // MARK: - Properties
    private struct VisualConstants {
        static let horizontalSpacing = 6.0
        static let categoryImageSize = 30.0
        static let backgroundCornerRadius = 12.0
    }

    let category: Category


    // MARK: - Body
    var body: some View {
        Button {
        } label: {
            HStack(spacing: VisualConstants.horizontalSpacing) {
                Image(category.image)
                    .renderingMode(.template)
                    .resizable()
                    .scaledToFit()
                    .frame(width: VisualConstants.categoryImageSize,
                           height: VisualConstants.categoryImageSize)
                    .foregroundColor(Resources.Colors.Text.primaryColor)

                Text(category.name.uppercased())
                    .fontWeight(.light)
                    .foregroundColor(Resources.Colors.Text.primaryColor)

                Spacer()
            } //: HStack
            .padding()
            .background(
                Resources.Colors.Background.secondaryColor
                .cornerRadius(VisualConstants.backgroundCornerRadius)
            )
            .background(
                RoundedRectangle(cornerRadius: VisualConstants.backgroundCornerRadius)
                    .stroke(Resources.Colors.Text.primaryColor,
                            lineWidth: 1)
            )
        } //: Button
    }
}

// MARK: - Preview
struct CategoryItemView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryItemView(category: Constanst.Data.categories[0])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Resources.Colors.Background.primaryColor)
    }
}
