//
//  CategoryModel.swift
//  Touchdown
//
//  Created by Pablo Caraballo Gómez on 27/1/24.
//

import Foundation

struct Category: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
}
