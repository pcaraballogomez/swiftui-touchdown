//
//  FooterView.swift
//  Touchdown
//
//  Created by Pablo Caraballo Gómez on 25/1/24.
//

import SwiftUI

struct FooterView: View {

    // MARK: - Body
    var body: some View {
        VStack(spacing: 10) {
            Text(Resources.Strings.Footer.text)
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .layoutPriority(2)

            Image(Resources.Images.Logo.lineal)
                .renderingMode(.template)
                .foregroundColor(.gray)
                .layoutPriority(0)

            Text(Resources.Strings.Footer.copyright)
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundColor(.gray)
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
            .background(Resources.Colors.colorBackground)
    }
}
