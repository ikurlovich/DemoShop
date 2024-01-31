//
//  ShoppingCartUIView.swift
//  DemoShop
//
//  Created by Илья Курлович on 31.01.2024.
//

import SwiftUI

struct ShoppingCartUIView: View {
    var body: some View {
        VStack {
            Image(systemName: "cart")
                .resizable()
                .frame(width: 50, height: 50)
            Text("Экран корзины в разработке!")
        }
    }
}

#Preview {
    ShoppingCartUIView()
}
