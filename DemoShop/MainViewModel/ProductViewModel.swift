//
//  ProductViewModel.swift
//  DemoShop
//
//  Created by Илья Курлович on 30.01.2024.
//

import Foundation

final class ProductViewModel: ObservableObject {
    @Published var choice = "Шт"
    
    @Published var products = [ProductCard(id: UUID(),
                                           name: "Добавка \"Липа\"\nк чаю 200 г",
                                           image: "Tea",
                                           rating: 4.1,
                                           reviewsNumber: 19,
                                           country: "Испания, Риоха",
                                           manufacturer: "Россия, Краснодарский край", 
                                           description: "Флавоноиды липового цвета обладают противовоспалительным действием, способствуют укреплению стенки сосудов.",
                                           macronutrients: Nutrition(calories: 25, protein: 1.3, fats: 0.1, carbs: 3.3),
                                           reviews: Reviews(name: "Александр В.", date: "7 мая 2021", stars: 4, description: "Хорошая добавка, мне очень понравилась! Хочу, чтобы все добавки были такими!"),
                                           price: 120,
                                           priceWeight: 55.9,
                                           heightPrice: 199.0)]
}
