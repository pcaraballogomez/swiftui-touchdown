//
//  TitleView.swift
//  Touchdown
//
//  Created by Pablo Caraballo Gómez on 29/1/24.
//

import SwiftUI

struct TitleView: View {

    // MARK: - Properties
    let title: String

    private struct VisualConstants {
        static let topPadding = 15.0
        static let bottomPadding = 10.0
    }

    // MARK: - Body
    var body: some View {
        HStack {
            Text(title)
                .font(.largeTitle)
                .fontWeight(.heavy)

            Spacer()
        } //: HStack
        .padding(.horizontal)
        .padding(.top, VisualConstants.topPadding)
        .padding(.bottom, VisualConstants.bottomPadding)
    }
}


// MARK: - Preview
struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        TitleView(title: "Helmet")
            .previewLayout(.sizeThatFits)
            .background(Resources.Colors.Background.primaryColor)
    }
}
