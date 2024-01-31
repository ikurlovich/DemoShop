//
//  ReviewsBlockUI.swift
//  DemoShop
//
//  Created by Илья Курлович on 31.01.2024.
//

import SwiftUI

struct ReviewsBlockUI: View {
    var name: String
    var date: String
    var description: String
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(0..<3) {_ in
                    Spacer()
                        .frame(width: 1)
                    VStack {
                        ZStack {
                            Rectangle()
                                .foregroundColor(.white)
                                .frame(width: 250, height: 150)
                                .cornerRadius(20)
                                .shadow(color: .gray, radius: 10)
                                .opacity(0.3)
                            
                            VStack(spacing: 5) {
                                HStack {
                                    Spacer()
                                        .frame(width: 15)
                                    Text(name)
                                        .fontWeight(.bold)
                                    Spacer()
                                }
                                
                                HStack {
                                    Spacer()
                                        .frame(width: 15)
                                    Text(date)
                                        .foregroundColor(.gray)
                                    Spacer()
                                }
                                
                                HStack(spacing: 2) {
                                    Spacer()
                                        .frame(width: 15)
                                    ForEach(0..<4) {_ in
                                        Image(systemName: "star.fill")
                                            .foregroundColor(.yellow)
                                    }
                                    Image(systemName: "star.fill")
                                        .foregroundColor(.gray)
                                        .opacity(0.3)
                                    Spacer()
                                }
                                
                                HStack {
                                    Spacer()
                                        .frame(width: 15)
                                    Text(description)
                                        .font(.custom("CountryText", size: 14))
                                    Spacer()
                                }
                            }
                            .frame(width: 250, height: 130)
                        }
                    }
                    .padding()
                }
            }
        }
        .frame(height: 150)
    }
    
    init(_ name: String, _ date: String, _ description: String) {
        self.name = name
        self.date = date
        self.description = description
    }
}
