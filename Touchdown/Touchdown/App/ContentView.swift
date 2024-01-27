//
//  ContentView.swift
//  Touchdown
//
//  Created by Pablo Caraballo Gómez on 25/1/24.
//

import SwiftUI

struct ContentView: View {

    // MARK: - Properties
    private struct VisualConstants {
        static let featuredTabViewVerticalPadding = 20.0
        static let featuredTabViewAspectRatio = 1.475
    }

    // MARK: - Body
    var body: some View {
        VStack {
            NavigationBarView()
                .padding()
                .background(Resources.Colors.Background.secondaryColor)
                .shadow(color: .black.opacity(0.05),
                        radius: 5,
                        x: .zero,
                        y: 5)

            ScrollView(showsIndicators: false) {
                VStack {
                    FeaturedTabView()
                        .padding(.vertical,
                                 VisualConstants.featuredTabViewVerticalPadding)
                        .frame(height: UIScreen.main.bounds.width / VisualConstants.featuredTabViewAspectRatio)

                    CategoryGridView()
                    
                    FooterView()
                        .padding(.horizontal)
                } //: VStack
            } //: ScrollView
        } //: VStack
        .background(
            Resources.Colors.Background.primaryColor
                .ignoresSafeArea()
        )
    }
}

// MARK: - Preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
