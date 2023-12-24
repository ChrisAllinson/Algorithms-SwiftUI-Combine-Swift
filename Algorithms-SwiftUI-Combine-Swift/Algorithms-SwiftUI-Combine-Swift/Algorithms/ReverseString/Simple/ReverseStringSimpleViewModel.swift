//
//  ReverseStringSimpleViewModel.swift
//  Algorithms-SwiftUI-Combine-Swift
//
//  Created by Chris Allinson on 2023-12-24.
//

import Foundation

protocol ReverseStringSimpleManagable {
    func reverse(string: String) -> String
}

struct ReverseStringSimpleViewModel {
}

// MARK: ReverseStringSimpleManagable
extension ReverseStringSimpleViewModel: ReverseStringSimpleManagable {
    /**
        Reverses an input string

        - Parameters:
            - string: The input string we want to reverse
        - Returns: A string that is the reverse of the input string
        - Complexity: Time: O(n), Space: O(n)
    */
    func reverse(string: String) -> String {
        return string.reduce("", { currentValue, char in
            "\(char)" + currentValue
        })
    }
}
