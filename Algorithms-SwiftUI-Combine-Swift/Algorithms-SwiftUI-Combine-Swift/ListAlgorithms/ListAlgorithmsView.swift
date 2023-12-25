//
//  ListAlgorithmsView.swift
//  Algorithms-SwiftUI-Combine-Swift
//
//  Created by Chris Allinson on 2023-12-21.
//

import SwiftUI

struct ListAlgorithmsView: View {
    @EnvironmentObject private var dataModel: DataModel

    var body: some View {
        NavigationView {
            List {
                ForEach(dataModel.listAlgorithmsRows) { algorithmRow in
                    NavigationLink {
                        switch algorithmRow.type {
                        case .factorialIteration:
                            FactorialIterationView()
                        case .factorialRecursion:
                            FactorialRecursionView()
                        case .fibonacci:
                            FibonacciView()
                        case .binarySearch:
                            BinarySearchView()
                        case .reverseStringSimple:
                            ReverseStringSimpleView()
                        case .reverseStringUsingArray:
                            ReverseStringUsingArrayView()
                        case .palindromeUsingArray:
                            PalindromeUsingArrayView()
                        case .palindromeUsingString:
                            PalindromeUsingStringView()
                        }
                    } label: {
                        Text("\(algorithmRow.type.displayName)")
                    }
                }
            }
            .background(Color.white)
            .foregroundColor(Color.primary)
            .padding(EdgeInsets(top: 16.0, leading: 0.0, bottom: 16.0, trailing: 0.0))
            .navigationTitle("Algorithms")
        }
    }
}

struct ListAlgorithmsView_Previews: PreviewProvider {
    static var previews: some View {
        ListAlgorithmsView()
            .environmentObject(DataModel())
            .environment(\.locale, .init(identifier: "en"))
    }
}
