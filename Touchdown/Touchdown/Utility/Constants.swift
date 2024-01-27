//
//  Constants.swift
//  Touchdown
//
//  Created by Pablo Caraballo Gómez on 25/1/24.
//

import SwiftUI

struct Constanst {

    // MARK: - Data
    struct Data {
        static let categories: [Category] = decode(.category)
        static let players: [Player] = decode(.player)
    }

    // MARK: - Layout
    struct Layout {
        static let columnSpacing: CGFloat = 10
        static let rowSpacing: CGFloat = 10
    }

    // MARK: - SystemIconName
    struct SystemIconName {
        static let cart = "cart"
        static let magnifyingglass = "magnifyingglass"
    }
}
