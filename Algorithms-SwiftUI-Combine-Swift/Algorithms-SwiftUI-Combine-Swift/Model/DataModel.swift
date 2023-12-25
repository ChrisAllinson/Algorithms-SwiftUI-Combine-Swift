//
//  DataModel.swift
//  Algorithms-SwiftUI-Combine-Swift
//
//  Created by Chris Allinson on 2023-12-21.
//

import Foundation
import Combine

final class DataModel: ObservableObject {
    
    // MARK: published properties
    
    @Published var listAlgorithmsRows: [ListAlgorithmsRow] = [
        ListAlgorithmsRow(type: .factorialIteration),
        ListAlgorithmsRow(type: .factorialRecursion),
        ListAlgorithmsRow(type: .fibonacci),
        ListAlgorithmsRow(type: .binarySearch),
        ListAlgorithmsRow(type: .reverseStringSimple),
        ListAlgorithmsRow(type: .reverseStringUsingArray),
        ListAlgorithmsRow(type: .palindromeUsingArray),
        ListAlgorithmsRow(type: .palindromeUsingString)
    ]
}
