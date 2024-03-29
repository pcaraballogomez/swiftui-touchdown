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

    private struct VisualConstants {
        static let logoAnimationDuration = 0.5
        static let logoAnimationOffset = -25.0
        static let circleSize = 14.0
        static let circleXOffset = 13.0
        static let circleYOffset = -10.0
    }

    // MARK: - Body
    var body: some View {
        HStack {
            Button {
                // TODO: Implement
            } label: {
                Image(systemName: Constanst.SystemIconName.magnifyingGlass)
                    .font(.title)
                    .foregroundColor(Resources.Colors.Text.secondaryColor)
            } //: Button

            Spacer()

            LogoView()
                .opacity(isAnimated ? 1 : .zero)
                .offset(x: .zero,
                        y: isAnimated ? .zero : VisualConstants.logoAnimationOffset)
                .onAppear {
                    withAnimation(.easeOut(duration: VisualConstants.logoAnimationDuration)) {
                        isAnimated = true
                    }
                }
                .onDisappear() {
                    isAnimated = false
                }

            Spacer()

            ZStack {
                Button {
                    // TODO: Implement
                } label: {
                    Image(systemName: Constanst.SystemIconName.cart)
                        .font(.title)
                        .foregroundColor(Resources.Colors.Text.secondaryColor)
                } //: Button

                Circle()
                    .fill(.red)
                    .frame(width: VisualConstants.circleSize,
                           height: VisualConstants.circleSize)
                    .offset(x: VisualConstants.circleXOffset,
                            y: VisualConstants.circleYOffset)
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
