//
//  FeaturedItemView.swift
//  Touchdown
//
//  Created by Pablo Caraballo Gómez on 26/1/24.
//

import SwiftUI

struct FeaturedItemView: View {

    // MARK: - Properties
    let player: Player

    // MARK: - Body
    var body: some View {
        Image(player.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
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
