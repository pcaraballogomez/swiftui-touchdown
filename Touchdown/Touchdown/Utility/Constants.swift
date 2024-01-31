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
        static let brands: [Brand] = decode(.brand)
        static let categories: [Category] = decode(.category)
        static let players: [Player] = decode(.player)
        static let products: [Product] = decode(.product)
    }

    // MARK: - Layout
    struct Layout {
        static let columnSpacing: CGFloat = 10
        static let rowSpacing: CGFloat = 10
        static let gridItem = GridItem(.flexible(), spacing: Constanst.Layout.rowSpacing)
        static let gridLayout: [GridItem] = Array(repeating: Constanst.Layout.gridItem, count: 2)
    }

    // MARK: - Size
    struct Size {
        static let iconHeight = 31.0
    }

    // MARK: - SystemIconName
    struct SystemIconName {
        static let cart = "cart"
        static let chevronLeft = "chevron.left"
        static let heartCircle = "heart.circle"
        static let magnifyingGlass = "magnifyingglass"
        static let minusCircle = "minus.circle"
        static let plusCircle = "plus.circle"
        static let starFill = "star.fill"
    }
}
