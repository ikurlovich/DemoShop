//
//  SpecificationsTextUnUI.swift
//  DemoShop
//
//  Created by Илья Курлович on 31.01.2024.
//

import SwiftUI

struct SpecificationsTextUnUI: View {
    var name: String
    var nutrient: Double
    
    var body: some View {
        VStack {
            Spacer()
                .frame(height: 15)
            
            HStack(alignment: .firstTextBaseline) {
                Text(name)
                
                DottedLine()
                    .frame(minWidth: 0, maxWidth: .infinity)
                
                Text("\(nutrient.roundAndRemoveTrailingZeros(places: 1))г")
                    .multilineTextAlignment(.trailing)
            }
            .padding(.vertical, 1)
        }
        .font(.custom("CountryText", size: 14))
        .padding(.horizontal)
    }
    
    init(_ name: String, _ nutrient: Double) {
        self.name = name
        self.nutrient = nutrient
    }
}
