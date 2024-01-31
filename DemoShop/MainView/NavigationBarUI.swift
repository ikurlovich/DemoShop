//
//  NavigationBarUI.swift
//  DemoShop
//
//  Created by Илья Курлович on 30.01.2024.
//

import SwiftUI

struct NavigationBarUI: View {
    var body: some View {
        VStack {
            HStack(alignment: .bottom) {
                Image(systemName: "arrow.left")
                    .resizable()
                    .frame(width: 22, height: 20)
                    .foregroundColor(.green)
                
                Spacer()
                
                Image(systemName: "doc.plaintext")
                    .resizable()
                    .frame(width: 17, height: 22)
                    .foregroundColor(.green)
                
                Spacer()
                    .frame(width: 20)
                
                Image(systemName: "square.and.arrow.up")
                    .resizable()
                    .frame(width: 20, height: 25)
                    .foregroundColor(.green)
                
                Spacer()
                    .frame(width: 20)
                
                Image(systemName: "heart")
                    .resizable()
                    .frame(width: 20, height: 20)
                    .foregroundColor(.green)
            }
            .padding(.horizontal)
            
            Spacer()
                .frame(height: 12)
        }
    }
}
