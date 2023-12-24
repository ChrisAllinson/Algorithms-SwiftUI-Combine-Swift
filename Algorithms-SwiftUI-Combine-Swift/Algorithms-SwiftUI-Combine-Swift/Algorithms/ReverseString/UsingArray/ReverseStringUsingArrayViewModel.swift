//
//  ReverseStringUsingArrayViewModel.swift
//  Algorithms-SwiftUI-Combine-Swift
//
//  Created by Chris Allinson on 2023-12-24.
//

import Foundation

protocol ReverseStringUsingArrayManagable {
    func reverse(string: String) -> String
}

struct ReverseStringUsingArrayViewModel {
}

// MARK: ReverseStringUsingArrayManagable
extension ReverseStringUsingArrayViewModel: ReverseStringUsingArrayManagable {
    /**
        Reverses an input string

        - Parameters:
            - string: The input string we want to reverse
        - Returns: A string that is the reverse of the input string
        - Complexity: Time: O(n), Space: O(n)
    */
    func reverse(string: String) -> String {
        // create array from input string's characters
        var charArray = Array(string)
        
        // iterate through characters array
        for (index, el) in charArray.enumerated() {
            
            // stop at 1/2 way (otherwise we will undo our swapping)
            if (index >= charArray.count / 2) {
                break
            }
            
            // determine current iteration's left and right index
            let leftIndex = index
            let rightIndex = charArray.count - 1 - index
            
            // determine current iteration's left and right characters
            let leftChar = el
            let rightChar = charArray[rightIndex]
            
            // swap characters
            charArray[leftIndex] = rightChar
            charArray[rightIndex] = leftChar
        }

        // return string from characters array
        return String(charArray)
    }
}
