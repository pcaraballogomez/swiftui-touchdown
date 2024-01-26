//
//  FileHelper.swift
//  Touchdown
//
//  Created by Pablo Caraballo Gómez on 26/1/24.
//

import Foundation

enum File: String {
    case brand = "brand.json"
    case category = "category.json"
    case player = "player.json"
    case product = "product.json"
}

func decode<T: Codable>(_ file: File) -> T {
    Bundle.main.decode(file.rawValue)
}
