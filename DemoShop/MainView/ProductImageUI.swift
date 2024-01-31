//
//  ProductImageUI.swift
//  DemoShop
//
//  Created by Илья Курлович on 30.01.2024.
//

import SwiftUI

struct ProductImageUI: View {
    var name: String
    var body: some View {
        GeometryReader { geometry in
            ScrollView(.horizontal){
                HStack {
                    Spacer()
                        .frame(width: geometry.size.width/2 - 120)
                    
                    Image(name)
                        .resizable()
                        .frame(width: 200, height: 200)
                        .cornerRadius(20)
                }
            }
        }
        .frame(height: 200)
    }
    
    init(_ name: String) {
        self.name = name
    }
}

