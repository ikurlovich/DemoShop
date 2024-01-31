//
//  DescriptionTextUI.swift
//  DemoShop
//
//  Created by Илья Курлович on 31.01.2024.
//

import SwiftUI

struct DescriptionTextUI: View {
    var description: String
    
    var body: some View {
        VStack {
            Spacer()
                .frame(height: 20)
            
            HStack {
                Text("Описание")
                    .font(.headline)
                
                Spacer()
            }
            
            HStack {
                Text(description)
                
                Spacer()
            }
            .padding(.vertical, 1)
            
        }
        .padding(.horizontal)
    }
    
    init(_ description: String) {
        self.description = description
    }
}

