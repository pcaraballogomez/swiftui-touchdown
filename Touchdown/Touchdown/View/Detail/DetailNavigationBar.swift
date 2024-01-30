//
//  DetailNavigationBar.swift
//  Touchdown
//
//  Created by Pablo Caraballo Gómez on 29/1/24.
//

import SwiftUI

struct DetailNavigationBar: View {

    // MARK: - Properties
    @EnvironmentObject var shop: Shop

    // MARK: - Body
    var body: some View {
        HStack {
            Button {
                withAnimation(.easeIn) {
                    shop.selectedProduct = nil
                }
            } label: {
                Image(systemName: Constanst.SystemIconName.chevronLeft)
                    .font(.title)
                    .foregroundColor(Resources.Colors.Text.tertiaryColor)
            }

            Spacer()

            Button {

            } label: {
                Image(systemName: Constanst.SystemIconName.cart)
                    .font(.title)
                    .foregroundColor(Resources.Colors.Text.tertiaryColor)
            }
        } //: HStack
    }
}

// MARK: - Preview
struct DetailNavigationBar_Previews: PreviewProvider {
    static var previews: some View {
        DetailNavigationBar()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Resources.Colors.Background.tertiaryColor)
            .environmentObject(Shop())
    }
}
