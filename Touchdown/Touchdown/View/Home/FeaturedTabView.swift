//
//  FeaturedTabView.swift
//  Touchdown
//
//  Created by Pablo Caraballo Gómez on 26/1/24.
//

import SwiftUI

struct FeaturedTabView: View {

    // MARK: - Properties
    private struct VisualConstants {
        static let featuredItemViewTopPadding = 10.0
        static let featuredItemViewHorizontalPadding = 15.0
    }

    // MARK: - Body
    var body: some View {
        TabView {
            ForEach(Constanst.Data.players) { player in
                FeaturedItemView(player: player)
                    .padding(.top,
                             VisualConstants.featuredItemViewTopPadding)
                    .padding(.horizontal,
                             VisualConstants.featuredItemViewHorizontalPadding)
            }
        } //: TabView
        .tabViewStyle(.page(indexDisplayMode: .always))
    }
}

// MARK: - Preview
struct FeaturedTabView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedTabView()
            .background(Resources.Colors.Background.primaryColor)
    }
}
