//
//  ContentView.swift
//  Touchdown
//
//  Created by Pablo Caraballo Gómez on 25/1/24.
//

import SwiftUI

struct ContentView: View {

    // MARK: - Properties

    // MARK: - Body
    var body: some View {
        VStack {
            NavigationBarView()
                .padding()
                .background(Color.white)
                .shadow(color: .black.opacity(0.05),
                        radius: 5,
                        x: .zero,
                        y: 5)

            ScrollView(showsIndicators: false) {
                VStack {
                    FeaturedTabView()
                        .padding(.vertical, 20)
                        .frame(height: UIScreen.main.bounds.width / 1.475)
                    
                    FooterView()
                        .padding(.horizontal)
                } //: VStack
            } //: ScrollView
        } //: VStack
        .background(Resources.Colors.background.ignoresSafeArea())
    }
}

// MARK: - Preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
