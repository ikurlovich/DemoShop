//
//  NameProductUI.swift
//  DemoShop
//
//  Created by Илья Курлович on 31.01.2024.
//

import SwiftUI

struct NameProductUI: View {
    var name: String
    var body: some View {
        HStack {
            Text(name)
                .font(.largeTitle)
                .fontWeight(.bold)
                .multilineTextAlignment(.leading)
            
            Spacer()
        }
        .padding(.horizontal)
    }
    
    init(_ name: String) {
        self.name = name
    }
}

