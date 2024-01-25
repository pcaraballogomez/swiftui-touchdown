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
        FooterView()
            .padding(.horizontal)
    }
}

// MARK: - Preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
