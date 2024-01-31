//
//  NameCountryUI.swift
//  DemoShop
//
//  Created by Илья Курлович on 31.01.2024.
//

import SwiftUI

struct NameCountryUI: View {
    var name: String
    
    var body: some View {
        HStack(spacing: 15) {
            Image("Spain")
                .resizable()
                .frame(width: 30, height: 30)
            
            Text(name)
                .font(.custom("CountryText", size: 14))
            
            Spacer()
        }
        .padding()
    }
    
    init(_ name: String) {
        self.name = name
    }
}
