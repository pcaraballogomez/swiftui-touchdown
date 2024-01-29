//
//  BrandItemView.swift
//  Touchdown
//
//  Created by Pablo Caraballo Gómez on 29/1/24.
//

import SwiftUI

struct BrandItemView: View {

    // MARK: - Properties
    let brand: Brand

    private struct VisualConstants {
        static let imagePadding = 3.0
        static let cornerRadius = 12.0
        static let strokeLineWidth = 1.0
    }

    // MARK: - Body
    var body: some View {
        Image(brand.image)
            .resizable()
            .scaledToFit()
            .padding(VisualConstants.imagePadding)
            .background(Resources.Colors.Background.secondaryColor)
            .cornerRadius(VisualConstants.cornerRadius)
            .background(
                RoundedRectangle(cornerRadius: VisualConstants.cornerRadius)
                    .stroke(Resources.Colors.Text.primaryColor,
                            lineWidth: VisualConstants.strokeLineWidth)
            )
    }
}

// MARK: - Preview
struct BrandItemView_Previews: PreviewProvider {
    static var previews: some View {
        BrandItemView(brand: Constanst.Data.brands[0])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Resources.Colors.Background.primaryColor)
    }
}
