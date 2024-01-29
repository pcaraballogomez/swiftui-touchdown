//
//  DetailSizeView.swift
//  Touchdown
//
//  Created by Pablo Caraballo Gómez on 29/1/24.
//

import SwiftUI

struct DetailSizeView: View {

    // MARK: - Properties
    let title: String
    var sizes: [String] = ["XS", "S", "M", "L", "XL"]
    var action: (() -> Void)?

    private struct VisualConstants {
        static let spacing = 3.0
        static let iconSize = 28.0
        static let iconCornerRadius = 5.0
        static let strokeWidth = 2.0
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
                ForEach(sizes, id: \.self) { size in
                    Button {
                        action?()
                    } label: {
                        Text(size)
                            .font(.footnote)
                            .fontWeight(.heavy)
                            .foregroundColor(Resources.Colors.Background.tertiaryColor)
                            .frame(width: VisualConstants.iconSize,
                                   height: VisualConstants.iconSize)
                            .background(
                                Resources.Colors.Background.secondaryColor
                                    .cornerRadius(VisualConstants.iconCornerRadius)
                            )
                            .background(
                                RoundedRectangle(cornerRadius: VisualConstants.iconCornerRadius)
                                    .stroke(Resources.Colors.Background.tertiaryColor,
                                            lineWidth: VisualConstants.strokeWidth)
                            )
                    }
                }
            } //: HStack
        }
    }
}

struct DetailSizeView_Previews: PreviewProvider {
    static var previews: some View {
        DetailSizeView(title: Resources.Strings.Detail.ratingTitle)
        .previewLayout(.sizeThatFits)
        .padding()
    }
}

