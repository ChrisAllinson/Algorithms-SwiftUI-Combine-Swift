//
//  PalindromeUsingStringViewModel.swift
//  Algorithms-SwiftUI-Combine-Swift
//
//  Created by Chris Allinson on 2023-12-25.
//

import Foundation

protocol PalindromeUsingStringManagable {
    func determineIfPalindrome(_ string: String) -> Bool
}

struct PalindromeUsingStringViewModel {
}

// MARK: PalindromeUsingStringManagable
extension PalindromeUsingStringViewModel: PalindromeUsingStringManagable {
    /**
        Determines if the input is a palindrome

        - Parameters:
            - string: The input we want to check is a palindrome
        - Returns: Whether or not the input is a palindrome
        - Complexity: Time: O(n), Space: O(1)
    */
    func determineIfPalindrome(_ string: String) -> Bool {
        for i in 0..<(string.count / 2) {
            // determine current iteration's left and right indexes
            let leftIndexOfString = string.index(string.startIndex, offsetBy: i)
            let rightIndexOfString = string.index(string.endIndex, offsetBy: (-1 * i) - 1)
            
            // determine current iteration's left and right characters
            let leftChar = string[leftIndexOfString]
            let rightChar = string[rightIndexOfString]
            
            // if left and right characters aren't equal, not a palindrome
            if leftChar != rightChar {
                return false
            }
        }
        return true
    }
}
