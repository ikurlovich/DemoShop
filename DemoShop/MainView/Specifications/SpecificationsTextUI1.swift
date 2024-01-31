//
//  SpecificationsTextUI1.swift
//  DemoShop
//
//  Created by Илья Курлович on 31.01.2024.
//

import SwiftUI

struct SpecificationsTextUI1: View {
    var manufacturer: String
    
    var body: some View {
        VStack {
            Spacer()
                .frame(height: 15)
            
            HStack(alignment: .firstTextBaseline) {
                Text("Производство")
                
                DottedLine()
                    .frame(minWidth: 0, maxWidth: .infinity)
                
                Text(manufacturer)
                    .multilineTextAlignment(.trailing)
            }
            .padding(.vertical, 1)
        }
        .font(.custom("CountryText", size: 14))
        .padding(.horizontal)
    }
    
    init(_ manufacturer: String) {
        self.manufacturer = manufacturer
    }
}
