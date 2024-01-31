//
//  GreenSpecificationsText.swift
//  DemoShop
//
//  Created by Илья Курлович on 31.01.2024.
//

import SwiftUI

struct GreenSpecificationsText: View {
    var body: some View {
        VStack {
            Spacer()
                .frame(height: 15)
            
            HStack {
                Text("Все характеристики")
                    .font(.headline)
                    .foregroundColor(.green)
                
                Spacer()
            }
        }
        .padding(.horizontal)
    }
}
