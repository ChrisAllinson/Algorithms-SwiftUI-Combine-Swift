//
//  BinarySearchViewModel.swift
//  Algorithms-SwiftUI-Combine-Swift
//
//  Created by Chris Allinson on 2023-12-24.
//

import Foundation

protocol BinarySearchManagable {
    func binarySearchFor(_ desiredValue: Int, inArray array: [Int], leftIndex: Int, rightIndex: Int) -> Bool
}

struct BinarySearchViewModel {
}

// MARK: BinarySearchManagable
extension BinarySearchViewModel: BinarySearchManagable {
    /**
        Uses binary search to try to find a desired value in a sorted array of values

        - Parameters:
            - desiredValue: The desired value we want to search for
            - array: The sorted array of values we want to search in
            - leftIndex: The left most index of the array
            - rightIndex: The right most index of the array
        - Returns: Whether or not the desired value was found
        - Complexity: Time: O(log n), Space: O(log n)
    */
    func binarySearchFor(_ desiredValue: Int, inArray array: [Int], leftIndex: Int, rightIndex: Int) -> Bool {
        // sad path
        guard array.count > 0 else {
            return false
        }

        // base case
        guard leftIndex <= rightIndex else {
            return false
        }

        // happy path
        let midIndex = Int((leftIndex + rightIndex) / 2)
        if array[midIndex] == desiredValue {
            return true
        }

        var newLeftIndex = leftIndex
        var newRightIndex = rightIndex
        if desiredValue < array[midIndex] {
            newRightIndex = midIndex - 1
        } else {
            newLeftIndex = midIndex + 1
        }

        return binarySearchFor(desiredValue, inArray: array, leftIndex: newLeftIndex, rightIndex: newRightIndex)
    }
}
