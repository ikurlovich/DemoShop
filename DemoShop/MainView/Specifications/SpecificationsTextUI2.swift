//
//  SpecificationsTextUI2.swift
//  DemoShop
//
//  Created by Илья Курлович on 31.01.2024.
//

import SwiftUI

struct SpecificationsTextUI2: View {
    var calories: Double
    
    var body: some View {
        VStack {
            Spacer()
                .frame(height: 15)
            
            HStack(alignment: .firstTextBaseline) {
                Text("Энергетическая ценность, ккал/100 г")
                
                DottedLine()
                    .frame(minWidth: 0, maxWidth: .infinity)
                
                Text("\(calories.roundAndRemoveTrailingZeros(places: 1)) ккал, \((calories * 4.184).roundAndRemoveTrailingZeros(places: 0)) кДж")
                    .multilineTextAlignment(.trailing)
            }
            .padding(.vertical, 1)
        }
        .font(.custom("CountryText", size: 14))
        .padding(.horizontal)
    }
    
    init(_ calories: Double) {
        self.calories = calories
    }
}
