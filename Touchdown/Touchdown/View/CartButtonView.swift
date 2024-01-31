//
//  CartButtonView.swift
//  Touchdown
//
//  Created by Pablo Caraballo Gómez on 31/1/24.
//

import SwiftUI

struct CartButtonView: View {

    // MARK: - Body
    var body: some View {
        Button {
            // TODO: Implement
        } label: {
            Image(systemName: Constanst.SystemIconName.cart)
                .font(.title2)
                .foregroundColor(Resources.Colors.Text.tertiaryColor)
        }
    }
}

// MARK: - Preview
struct CartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        CartButtonView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Resources.Colors.Background.tertiaryColor)
    }
}
