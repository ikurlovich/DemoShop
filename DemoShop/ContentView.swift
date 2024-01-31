//
//  ContentView.swift
//  DemoShop
//
//  Created by Илья Курлович on 30.01.2024.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var vmm = ProductViewModel()
    
    var body: some View {
        if let vm = vmm.products.first {
            ScrollView {
                PriceByCardUI()
                ProductImageUI(vm.image)
                StarsRowUI(vm.rating, vm.reviewsNumber)
                NameProductUI(vm.name)
                NameCountryUI(vm.country)
                DescriptionTextUI(vm.description)
                SpecificationsTextHeadUI()
                SpecificationsTextUI1(vm.manufacturer)
                SpecificationsTextUI2(vm.macronutrients.calories)
                SpecificationsTextUnUI("Жиры/100г", vm.macronutrients.fats)
                SpecificationsTextUnUI("Белки/100г", vm.macronutrients.protein)
                SpecificationsTextUnUI("Углеводы/100г", vm.macronutrients.carbs)
                GreenSpecificationsText()
                ReviewsHeadTextUI()
                ReviewsBlockUI(vm.reviews.name, vm.reviews.date, vm.reviews.description)
                MakeReview()
                DifferentLineUI()
                PickerWeightUI(choice: $vmm.choice)
                PriceRowUI($vmm.choice, vm.price, vm.priceWeight, vm.heightPrice)
            }
        } else {
            fatalError("Ошибка приложения при развёртывании данных")
        }
    }
}

#Preview {
    ContentView()
}
