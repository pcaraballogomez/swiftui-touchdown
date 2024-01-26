//
//  LogoView.swift
//  Touchdown
//
//  Created by Pablo Caraballo Gómez on 26/1/24.
//

import SwiftUI

struct LogoView: View {

    // MARK: - Body
    var body: some View {
        HStack(spacing: 4) {
            Text("Touch".uppercased())
                .font(.title3)
                .fontWeight(.black)
                .foregroundColor(Resources.Colors.Home.logoTextColor)

            Image(Resources.Images.Logo.dark)
                .resizable()
                .scaledToFit()
                .frame(width: 30, height: 30)

            Text("Down".uppercased())
                .font(.title3)
                .fontWeight(.black)
                .foregroundColor(Resources.Colors.Home.logoTextColor)
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
