//
//  CateogrySectionView.swift
//  Touchdown
//
//  Created by Pablo Caraballo Gómez on 27/1/24.
//

import SwiftUI

struct CateogrySectionView: View {

    // MARK: - Properties
    private struct VisualConstants {
        static let cornerRadius = 12.0
        static let width = 85.0
        static let rotationAngle = 90.0
    }
    @State var rotateClockwise: Bool

    // MARK: - Body
    var body: some View {
        VStack {
            Spacer()
            Text(Resources.Strings.Category.title.uppercased())
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .rotationEffect(Angle(degrees: rotateClockwise ? VisualConstants.rotationAngle : -VisualConstants.rotationAngle))
            Spacer()
        } //: VStack
        .background(
            Resources.Colors.Background.tertiaryColor
                .cornerRadius(VisualConstants.cornerRadius)
        )
        .frame(width: VisualConstants.width)
    }
}

// MARK: - Preview
struct CateogrySectionView_Previews: PreviewProvider {
    static var previews: some View {
        CateogrySectionView(rotateClockwise: true)
            .previewLayout(.fixed(width: 120,
                                  height: 240))
            .background(Resources.Colors.Background.primaryColor)
    }
}
