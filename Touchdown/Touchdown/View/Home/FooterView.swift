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
            Text("We offer the most cutting edge, comfortable, lightweight and durable footbal helmets in the market at affordable prices.")
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .layoutPriority(2)

            Image("logo-lineal")
                .renderingMode(.template)
                .foregroundColor(.gray)
                .layoutPriority(0)

            Text("Copyright © Pablo Caraballo\nAll rights reserved")
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
            .background(Constanst.Colors.colorBackground)
    }
}
