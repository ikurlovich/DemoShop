//
//  StarsRowUI.swift
//  DemoShop
//
//  Created by Илья Курлович on 31.01.2024.
//

import SwiftUI

struct StarsRowUI: View {
    var rating: Double
    var reviewsNumber: Int
    
    var body: some View {
        HStack(spacing: 3) {
            Image(systemName: "star.fill")
                .foregroundColor(.yellow)
            
            Text("\(rating.roundAndRemoveTrailingZeros(places: 1))")
            
            Text("|")
                .foregroundColor(.gray)
            
            Text("\(reviewsNumber) отзывов")
                .foregroundColor(.gray)
            
            Spacer()
            
            ZStack {
                Rectangle()
                    .frame(width: 50, height: 22)
                    .foregroundColor(.red)
                Text("-5%")
                    .font(.caption)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
            }
            
        }
        .padding()
    }
    
    init(_ rating: Double, _ reviewsNumber: Int) {
        self.rating = rating
        self.reviewsNumber = reviewsNumber
    }
}
