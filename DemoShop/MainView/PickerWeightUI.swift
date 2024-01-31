//
//  PickerWeightUI.swift
//  DemoShop
//
//  Created by Илья Курлович on 31.01.2024.
//

import SwiftUI

struct PickerWeightUI: View {
    @Binding var choice: String
    let types = ["Шт", "Кг"]
    
    var body: some View {
        Picker("Type", selection: $choice) {
            ForEach(types, id: \.self) {
                Text($0)
            }
        }
        .pickerStyle(.segmented)
        .padding(.horizontal)
    }
}

