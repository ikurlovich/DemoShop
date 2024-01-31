//
//  ExDouble.swift
//  DemoShop
//
//  Created by Илья Курлович on 31.01.2024.
//

import Foundation

extension Double {
    func roundAndRemoveTrailingZeros(places: Int) -> String {
        let divisor = pow(10.0, Double(places))
        let roundedNumber = (self * divisor).rounded() / divisor
        return String(format: "%g", roundedNumber)
    }
}
