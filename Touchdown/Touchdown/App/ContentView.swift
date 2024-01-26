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

            Spacer()

            FooterView()
                .padding(.horizontal)
        } //: VStack
        .background(Resources.Colors.colorBackground.ignoresSafeArea())
    }
}

// MARK: - Preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
