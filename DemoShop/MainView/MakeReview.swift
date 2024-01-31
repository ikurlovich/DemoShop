//
//  MakeReview.swift
//  DemoShop
//
//  Created by Илья Курлович on 31.01.2024.
//

import SwiftUI

struct MakeReview: View {
    @State private var height: CGFloat = 40
    
    var body: some View {
        ZStack {
            GeometryReader { geometry in
                Rectangle()
                    .frame(width: geometry.size.width, height: height)
                    .hidden()
                    .overlay(
                        Capsule().stroke(Color.green, lineWidth: 2)
                    )
            }
            .frame(height: height)
            
            Text("Оставить отзыв")
                .font(.headline)
                .foregroundColor(.green)
                .padding()
        }
        .padding(.horizontal)
    }
}


