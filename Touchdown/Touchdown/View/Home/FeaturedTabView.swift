//
//  FeaturedTabView.swift
//  Touchdown
//
//  Created by Pablo Caraballo Gómez on 26/1/24.
//

import SwiftUI

struct FeaturedTabView: View {

    // MARK: - Body
    var body: some View {
        TabView {
            ForEach(Constanst.Data.players) { player in
                FeaturedItemView(player: player)
                    .padding(.top, 10)
                    .padding(.horizontal, 15)
            }
        } //: TabView
        .tabViewStyle(.page(indexDisplayMode: .always))
    }
}

// MARK: - Preview
struct FeaturedTabView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedTabView()
            .background(Resources.Colors.background)
    }
}
