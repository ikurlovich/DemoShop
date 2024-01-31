//
//  ProductCard.swift
//  DemoShop
//
//  Created by Илья Курлович on 30.01.2024.
//

import Foundation

struct ProductCard: Identifiable, Codable {
    var id: UUID
    let name: String
    let image: String
    let rating: Double
    let reviewsNumber: Int
    let country: String
    let manufacturer: String
    let description: String
    let macronutrients: Nutrition
    let reviews: Reviews
    let price: Double
    let priceWeight: Double
    let heightPrice: Double
}
