//
//  LogoView.swift
//  Touchdown
//
//  Created by Pablo Caraballo Gómez on 26/1/24.
//

import SwiftUI

struct LogoView: View {

    // MARK: - Properties
    private struct VisualConstants {
        static let itemSpacing = 4.0
        static let logoSize = 30.0
    }

    // MARK: - Body
    var body: some View {
        HStack(spacing: VisualConstants.itemSpacing) {
            Text(Resources.Strings.Logo.text1.uppercased())
                .font(.title3)
                .fontWeight(.black)
                .foregroundColor(Resources.Colors.logoTextColor)

            Image(Resources.Images.Logo.dark)
                .resizable()
                .scaledToFit()
                .frame(width: VisualConstants.logoSize,
                       height: VisualConstants.logoSize)

            Text(Resources.Strings.Logo.text1.uppercased())
                .font(.title3)
                .fontWeight(.black)
                .foregroundColor(Resources.Colors.logoTextColor)
        } //: HStack
    }
}

struct LogoView_Previews: PreviewProvider {
    static var previews: some View {
        LogoView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
