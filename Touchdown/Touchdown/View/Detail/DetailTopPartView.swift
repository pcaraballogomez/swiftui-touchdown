//
//  DetailTopPartView.swift
//  Touchdown
//
//  Created by Pablo Caraballo Gómez on 29/1/24.
//

import SwiftUI

struct DetailTopPartView: View {

    // MARK: - Properties
    let title: String
    let text: String
    let image: String

    @State private var isAnimating = false

    private struct VisualConstants {
        static let horizontalSpacing = 6.0
        static let priceVerticalSpacing = 6.0
        static let onAppearAnimationDuration = 0.75
        static let initialTextAnimationYOffset = -50.0
        static let finalTextAnimationYOffset = -75.0
        static let initialImageAnimationYOffset = Double.zero
        static let finalImageAnimationYOffset = -35.0
    }

    // MARK: - Body
    var body: some View {
        HStack(spacing: VisualConstants.horizontalSpacing) {
            VStack(alignment: .leading,
                   spacing: VisualConstants.priceVerticalSpacing) {
                Text(title)
                    .fontWeight(.semibold)

                Text(text)
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .scaleEffect(1.35, anchor: .leading)
            }
            .offset(y: isAnimating ? VisualConstants.initialTextAnimationYOffset : VisualConstants.finalTextAnimationYOffset)

            Spacer()

            Image(image)
                .resizable()
                .scaledToFit()
                .offset(y: isAnimating ? VisualConstants.initialImageAnimationYOffset : VisualConstants.finalImageAnimationYOffset)
        } //: HStack
        .onAppear {
            withAnimation(.easeOut(duration: VisualConstants.onAppearAnimationDuration)) {
                isAnimating.toggle()
            }
        }
    }
}

// MARK: - Preview
struct DetailTopPartView_Previews: PreviewProvider {
    static var previews: some View {
        DetailTopPartView(title: Resources.Strings.Detail.priceTitle,
                          text: Constanst.Data.products[0].formattedPrice,
                          image: Constanst.Data.products[0].image)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
