//
//  SpecificationsTextHeadUI.swift
//  DemoShop
//
//  Created by Илья Курлович on 31.01.2024.
//

import SwiftUI

struct SpecificationsTextHeadUI: View {
    var body: some View {
        VStack {
            Spacer()
                .frame(height: 20)
            
            HStack {
                Text("Основные характеристики")
                    .font(.headline)
                
                Spacer()
            }
        }
        .padding(.horizontal)
    }
}
