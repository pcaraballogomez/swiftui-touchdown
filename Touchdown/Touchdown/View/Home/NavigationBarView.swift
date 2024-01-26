//
//  NavigationBarView.swift
//  Touchdown
//
//  Created by Pablo Caraballo Gómez on 26/1/24.
//

import SwiftUI

struct NavigationBarView: View {

    // MARK: - Properties
    @State private var isAnimated = false

    // MARK: - Body
    var body: some View {
        HStack {
            Button {

            } label: {
                Image(systemName: "magnifyingglass")
                    .font(.title)
                    .foregroundColor(Resources.Colors.Home.navBarTextColor)
            } //: Button

            Spacer()

            LogoView()
                .opacity(isAnimated ? 1 : .zero)
                .offset(x: .zero, y: isAnimated ? .zero : -25)
                .onAppear {
                    withAnimation(.easeOut(duration: 0.5)) {
                        isAnimated.toggle()
                    }
                }

            Spacer()

            ZStack {
                Button {

                } label: {
                    Image(systemName: "cart")
                        .font(.title)
                        .foregroundColor(Resources.Colors.Home.navBarTextColor)
                } //: Button

                Circle()
                    .fill(.red)
                    .frame(width: 14, height: 14)
                    .offset(x: 13, y: -10)
            } //: ZStack

        } //: HStack
    }
}

// MARK: - Preview
struct NavigationBarView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
