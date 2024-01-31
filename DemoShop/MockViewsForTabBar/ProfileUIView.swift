//
//  ProfileUIView.swift
//  DemoShop
//
//  Created by Илья Курлович on 31.01.2024.
//

import SwiftUI

struct ProfileUIView: View {
    var body: some View {
        VStack {
            Image(systemName: "person")
                .resizable()
                .frame(width: 50, height: 50)
            Text("Экран профиля в разработке!")
        }
    }
}

#Preview {
    ProfileUIView()
}
