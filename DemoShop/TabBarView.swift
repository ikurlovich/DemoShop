//
//  TabBarView.swift
//  DemoShop
//
//  Created by Илья Курлович on 31.01.2024.
//

import SwiftUI

struct TabBarView: View {
    var body: some View {
        VStack {
            NavigationBarUI()
            DifferentLineUI()
            
            TabView {
                ContentView()
                    .tabItem {
                        Image(systemName: "tree.circle")
                        Text("Главная")
                    }
                
                CatalogUIView()
                    .tabItem {
                        Image(systemName: "square.grid.2x2")
                        Text("Каталог")
                    }
                
                ShoppingCartUIView()
                    .tabItem {
                        Image(systemName: "cart")
                        Text("Корзина")
                    }
                
                ProfileUIView()
                    .tabItem {
                        Image(systemName: "person")
                        Text("Профиль")
                    }
            }
        }
    }
}

#Preview {
    TabBarView()
}
