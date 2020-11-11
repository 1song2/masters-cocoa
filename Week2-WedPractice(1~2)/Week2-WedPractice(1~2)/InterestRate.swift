//
//  InterestRate.swift
//  Week2-WedPractice(1~2)
//
//  Created by Song on 2020/11/11.
//

import Foundation

struct InterestRate {
    func getInterestRate(by day: Int) -> Double {
        switch day {
        case ...90:
            return 0.005
        case 91...180:
            return 0.01
        case 181...364:
            return 0.02
        case 365...:
            return 0.056
        default:
            return 0.0
        }
    }
    
    func calculateAmount(day: Int, amount: Int) -> Double {
        let interestRate = getInterestRate(by: day)
        let originalAmount = Double(amount)
        let interest = originalAmount * interestRate
        return originalAmount + interest
    }
}
