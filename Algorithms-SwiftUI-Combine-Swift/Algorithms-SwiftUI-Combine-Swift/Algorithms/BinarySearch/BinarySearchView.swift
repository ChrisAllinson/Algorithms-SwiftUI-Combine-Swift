//
//  BinarySearchView.swift
//  Algorithms-SwiftUI-Combine-Swift
//
//  Created by Chris Allinson on 2023-12-24.
//

import SwiftUI

struct BinarySearchView: View {
    private var viewModel: BinarySearchManagable = BinarySearchViewModel()
    @State private var selectedValue: Double = 0
    let dataSet = [1, 3, 5, 7, 9, 11, 13, 15, 17, 19]
    
    var binarySearchResultString: String {
        let result = viewModel.binarySearchFor(Int(selectedValue), inArray: dataSet, leftIndex: 0, rightIndex: dataSet.count - 1)
        return result ? "True" : "False"
    }
    
    var body: some View {
        NavigationView {
            VStack(spacing: 32) {
                VStack(spacing: 16) {
                    HStack {
                        Text("Data_Set")
                        Spacer()
                    }
                    HStack {
                        Text(verbatim: "\(dataSet)")
                        Spacer()
                    }
                }
                VStack(spacing: 16) {
                    HStack {
                        Text("Search_For")
                        Spacer()
                    }
                    Slider(value: $selectedValue, in: 0...20)
                }
                VStack(spacing: 16) {
                    HStack {
                        Text("Selected_Value")
                        Text("=")
                        Text("\(UInt(selectedValue))")
                    }
                    HStack {
                        Text("Was_Found")
                        Text("=")
                        Text("\(binarySearchResultString)")
                    }
                }
                Spacer()
            }
            .padding(EdgeInsets(top: 0.0, leading: 16.0, bottom: 0.0, trailing: 16.0))
        }
        .padding(EdgeInsets(top: 32.0, leading: 0.0, bottom: 32.0, trailing: 0.0))
        .navigationTitle("Binary_Search")
    }
}

struct BinarySearchView_Previews: PreviewProvider {
    static var previews: some View {
        BinarySearchView()
            .environment(\.locale, .init(identifier: "en"))
    }
}
