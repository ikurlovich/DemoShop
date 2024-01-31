//
//  PriceRowUI.swift
//  DemoShop
//
//  Created by Илья Курлович on 31.01.2024.
//

import SwiftUI

struct PriceRowUI: View {
    @State private var count: Double = 1
    @Binding var choiceSub: String
    var price: Double
    var priceWeight: Double
    var heightPrice: Double
    
    var body: some View {
        HStack {
            Spacer()
            
            HStack(alignment: .firstTextBaseline) {
                VStack(alignment: .leading) {
                    Text(priceWeight.roundAndRemoveTrailingZeros(places: 1))
                        .font(.title)
                        .fontWeight(.bold)
                    
                    Text("\(heightPrice.roundAndRemoveTrailingZeros(places: 1))")
                        .font(.callout)
                        .foregroundColor(.gray)
                        .strikethrough()
                }
                
                Text("₽/кг")
                
                Spacer()
                
                Group {
                    ZStack {
                        Rectangle()
                            .frame(width: 180, height: 50)
                            .foregroundColor(.green)
                            .clipShape(Capsule())
                        
                        HStack(spacing: 30) {
                            ZStack {
                                Image(systemName: "plus")
                                    .foregroundColor(.green)
                                
                                Image(systemName: "minus")
                                    .foregroundColor(.white)
                                
                            }
                            .onTapGesture {
                                if count != 1 {
                                    count -= 1
                                }
                            }
                            
                            VStack {
                                if choiceSub == "Шт" {
                                    Text("\(count.roundAndRemoveTrailingZeros(places: 2)) шт")
                                        .foregroundColor(.white)
                                        .fontWeight(.bold)
                                    
                                    Text("\((price * count).roundAndRemoveTrailingZeros(places: 2)) ₽")
                                        .foregroundColor(.white)
                                        .font(.caption)
                                } else if choiceSub == "Кг" {
                                    Text("\(count.roundAndRemoveTrailingZeros(places: 2)) кг")
                                        .foregroundColor(.white)
                                        .fontWeight(.bold)
                                    
                                    Text("\((priceWeight * count).roundAndRemoveTrailingZeros(places: 2)) ₽")
                                        .foregroundColor(.white)
                                        .font(.caption)
                                }
                            }
                            
                            Image(systemName: "plus")
                                .foregroundColor(.white)
                                .onTapGesture {
                                    count += 1
                                }
                        }
                    }
                }
                .frame(width: 180, height: 50)
                
            }
            .padding()
        }
    }
    
    init(_ choiceSub: Binding<String>, _ price: Double, _ priceWeight: Double, _ heightPrice: Double) {
        self._choiceSub = choiceSub
        self.price = price
        self.priceWeight = priceWeight
        self.heightPrice = heightPrice
    }
}


#Preview {
    PriceRowUI(.constant("Шт"), 120.0, 55.9, 199.9)
}
