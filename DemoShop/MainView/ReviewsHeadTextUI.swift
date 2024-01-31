//
//  ReviewsHeadTextUI.swift
//  DemoShop
//
//  Created by Илья Курлович on 31.01.2024.
//

import SwiftUI

struct ReviewsHeadTextUI: View {
    var body: some View {
        HStack {
            Text("Отзывы")
                .font(.title2)
                .fontWeight(.bold)
            
            Spacer()
            
            Text("Все 152")
                .font(.headline)
                .foregroundColor(.green)
        }
        .padding()
    }
}
