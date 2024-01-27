//
//  FooterView.swift
//  Touchdown
//
//  Created by Pablo Caraballo Gómez on 25/1/24.
//

import SwiftUI

struct FooterView: View {

    // MARK: - Properties
    private struct VisualConstants {
        static let spacing = 10.0
    }

    // MARK: - Body
    var body: some View {
        VStack(spacing: VisualConstants.spacing) {
            Text(Resources.Strings.Footer.text)
                .foregroundColor(Resources.Colors.footerTextColor)
                .multilineTextAlignment(.center)
                .layoutPriority(2)

            Image(Resources.Images.Logo.lineal)
                .renderingMode(.template)
                .foregroundColor(Resources.Colors.footerTextColor)
                .layoutPriority(0)

            Text(Resources.Strings.Footer.copyright)
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundColor(Resources.Colors.footerTextColor)
                .multilineTextAlignment(.center)
                .layoutPriority(1)
        } //: VStack
        .padding()
    }
}

// MARK: - Preview
struct FooterView_Previews: PreviewProvider {
    static var previews: some View {
        FooterView()
            .previewLayout(.sizeThatFits)
            .background(Resources.Colors.background)
    }
}
