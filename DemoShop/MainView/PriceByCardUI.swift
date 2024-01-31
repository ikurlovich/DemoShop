//
//  PriceByCardUI.swift
//  DemoShop
//
//  Created by Илья Курлович on 31.01.2024.
//

import SwiftUI

struct PriceByCardUI: View {
    var body: some View {
        HStack {
            Text("Цена по карте")
                .font(.caption2)
                .padding(5)
                .background(Color.green)
                .foregroundColor(.white)
                .cornerRadius(5)
            
            Spacer()
        }
        .padding(.horizontal)
        
        Spacer()
            .frame(height: 20)
    }
}
