//
//  DottedLine.swift
//  DemoShop
//
//  Created by Илья Курлович on 31.01.2024.
//

import SwiftUI

struct DottedLine: View {
    let height: CGFloat = 1.0
    let dashWidth: CGFloat = 1.0
    let dashSpacing: CGFloat = 4.0
    
    var body: some View {
        GeometryReader { geometry in
            Path { path in
                let dashLength = dashWidth + dashSpacing
                for index in stride(from: 0, to: geometry.size.width, by: dashLength) {
                    path.move(to: CGPoint(x: index, y: geometry.size.height / 2))
                    path.addLine(to: CGPoint(x: index + dashWidth, y: geometry.size.height / 2))
                }
            }
            .stroke(style: StrokeStyle(lineWidth: height, dash: [dashWidth, dashSpacing]))
        }
        .frame(height: 1)
    }
}
