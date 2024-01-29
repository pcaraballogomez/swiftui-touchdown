//
//  DetailRatingView.swift
//  Touchdown
//
//  Created by Pablo Caraballo Gómez on 29/1/24.
//

import SwiftUI

struct DetailRatingView: View {

    // MARK: - Properties
    let title: String
    var maxRating: Int = 5
    var iconName: String = Constanst.SystemIconName.starFill
    var action: (() -> Void)? = nil

    private struct VisualConstants {
        static let spacing = 3.0
        static let iconSize = 28.0
        static let iconCornerRadius = 5.0
    }

    // MARK: - Body
    var body: some View {
        VStack(alignment: .leading,
               spacing: VisualConstants.spacing) {

            Text(title)
                .font(.footnote)
                .fontWeight(.semibold)
                .foregroundColor(Resources.Colors.Background.tertiaryColor)

            HStack(alignment: .center,
                   spacing: VisualConstants.spacing) {
                ForEach(1...maxRating, id: \.self) { rating in
                    Button {
                        action?()
                    } label: {
                        Image(systemName: iconName)
                            .frame(width: VisualConstants.iconSize,
                                   height: VisualConstants.iconSize)
                            .background(
                                Resources.Colors.Background.tertiaryColor
                                    .cornerRadius(VisualConstants.iconCornerRadius)
                            )
                            .foregroundColor(Resources.Colors.Text.tertiaryColor)
                    }
                }
            } //: HStack
        }
    }
}

struct DetailRatingView_Previews: PreviewProvider {
    static var previews: some View {
        DetailRatingView(title: Resources.Strings.Detail.ratingTitle)
        .previewLayout(.sizeThatFits)
        .padding()
    }
}
