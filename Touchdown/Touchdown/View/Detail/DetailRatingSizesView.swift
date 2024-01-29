//
//  DetailRatingSizesView.swift
//  Touchdown
//
//  Created by Pablo Caraballo Gómez on 29/1/24.
//

import SwiftUI

struct DetailRatingSizesView: View {

    // MARK: - Properties
    private struct VisualConstants {
        static let spacing = 3.0
    }

    // MARK: - Body
    var body: some View {
        HStack(alignment: .top,
               spacing: VisualConstants.spacing) {

            DetailRatingView(title: Resources.Strings.Detail.ratingTitle) {
                print("rating item tapped")
            }

            Spacer()

            DetailSizeView(title: Resources.Strings.Detail.sizeTitle) {
                print("size item tapped")
            }
            // Sizes
        } //: HStack
    }
}

// MARK: - Preview
struct DetailRatingSizesView_Previews: PreviewProvider {
    static var previews: some View {
        DetailRatingSizesView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
