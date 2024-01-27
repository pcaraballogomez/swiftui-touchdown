//
//  FeaturedItemView.swift
//  Touchdown
//
//  Created by Pablo Caraballo Gómez on 26/1/24.
//

import SwiftUI

struct FeaturedItemView: View {

    // MARK: - Properties
    private struct VisualConstants {
        static let cornerRadius = 12.0
    }
    let player: Player

    // MARK: - Body
    var body: some View {
        Image(player.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(VisualConstants.cornerRadius)
    }
}

// MARK: - Preview
struct FeaturedItemView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedItemView(player: Constanst.Data.players[0])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Resources.Colors.background)
    }
}
