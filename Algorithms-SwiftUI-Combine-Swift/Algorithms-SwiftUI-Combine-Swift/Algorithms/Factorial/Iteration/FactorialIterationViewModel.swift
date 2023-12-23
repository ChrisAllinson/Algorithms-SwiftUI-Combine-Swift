//
//  FactorialIterationViewModel.swift
//  Algorithms-SwiftUI-Combine-Swift
//
//  Created by Chris Allinson on 2023-12-22.
//

import Foundation

protocol FactorialIterationManagable {
    func calculateFactorial(of inputValue: UInt) -> UInt
}

struct FactorialIterationViewModel {
}

// MARK: FactorialIterationManagable
extension FactorialIterationViewModel: FactorialIterationManagable {
    /**
        Uses iteration to calculate the factorial for an input value
     
        - Parameters:
            - inputValue: The value we want to find the factorial for
        - Returns: The value for the factorial of the input value
        - Complexity: Time: O(n), Space: O(1)
    */
    func calculateFactorial(of inputValue: UInt) -> UInt {
        var input = inputValue
        
        // edge case
        guard input != 0 else {
            return 1
        }

        // happy path
        var currentFactorialValue: UInt = input
        while input > 1 {
            currentFactorialValue = currentFactorialValue * (input - 1)
            input -= 1
        }
        return currentFactorialValue
    }
}
