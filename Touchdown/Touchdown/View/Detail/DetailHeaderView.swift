//
//  DetailHeaderView.swift
//  Touchdown
//
//  Created by Pablo Caraballo Gómez on 29/1/24.
//

import SwiftUI

struct DetailHeaderView: View {

    // MARK: - Properties
    let header: String
    let title: String

    private struct VisualConstants {
        static let verticalSpacing = 6.0
    }
    // MARK: - Body
    var body: some View {
        VStack(alignment: .leading,
               spacing: VisualConstants.verticalSpacing) {
            Text(header)

            Text(title)
                .font(.largeTitle)
                .fontWeight(.black)
        } //: VStack
        .foregroundColor(Resources.Colors.Text.tertiaryColor)
    }
}

// MARK: - Preview
struct DetailHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        DetailHeaderView(header: Resources.Strings.Detail.header,
                         title: Constanst.Data.products[0].name)
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Resources.Colors.Background.tertiaryColor)
    }
}
