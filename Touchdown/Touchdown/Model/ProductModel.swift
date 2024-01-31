//
//  ProductModel.swift
//  Touchdown
//
//  Created by Pablo Caraballo Gómez on 29/1/24.
//

import SwiftUI

struct Product: Codable, Hashable, Identifiable {
    let id: Int
    let name: String
    let image: String
    let price: Int
    let description: String
    let color: [Double]

    var backgroundColor: Color {
        guard color.count > 2 else {
            return .clear
        }
        return Color(red: color[0],
                     green: color[1],
                     blue: color[2])
    }

    var formattedPrice: String {
        "$\(price)"
    }
}
