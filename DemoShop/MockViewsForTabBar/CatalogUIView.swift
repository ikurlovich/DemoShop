//
//  CatalogUIView.swift
//  DemoShop
//
//  Created by Илья Курлович on 31.01.2024.
//

import SwiftUI

struct CatalogUIView: View {
    var body: some View {
        VStack {
            Image(systemName: "square.grid.2x2")
                .resizable()
                .frame(width: 50, height: 50)
            Text("Экран каталога в разработке!")
        }
    }
}

#Preview {
    CatalogUIView()
}
