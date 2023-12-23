//
//  FactorialRecursionViewModel.swift
//  Algorithms-SwiftUI-Combine-Swift
//
//  Created by Chris Allinson on 2023-12-22.
//

import Foundation

protocol FactorialRecursionManagable {
    func calculateFactorial(of inputValue: UInt) -> UInt
}

struct FactorialRecursionViewModel {
}

// MARK: FactorialRecursionManagable
extension FactorialRecursionViewModel: FactorialRecursionManagable {
    /**
        Uses recursion to determine the factorial for an input value

        - Parameters:
            - inputValue: The value we want to find the factorial for
        - Returns: The value for the factorial of the input value
        - Complexity: Time: O(n), Space: O(n)
    */
    func calculateFactorial(of inputValue: UInt) -> UInt {
        // edge case
        guard inputValue != 0 else {
            return 1
        }

        // base case
        guard inputValue != 1 else {
            return 1
        }

        // happy path
        return inputValue * calculateFactorial(of: inputValue - 1)
    }
}
