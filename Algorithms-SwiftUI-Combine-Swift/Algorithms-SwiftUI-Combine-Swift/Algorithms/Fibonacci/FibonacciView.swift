//
//  FibonacciView.swift
//  Algorithms-SwiftUI-Combine-Swift
//
//  Created by Chris Allinson on 2023-12-23.
//

import SwiftUI

struct FibonacciView: View {
    private var viewModel: FibonacciManagable = FibonacciViewModel()
    @State private var selectedValue: Double = 0
    
    var body: some View {
        NavigationView {
            VStack(spacing: 32) {
                HStack {
                    Text("Select_A_Value")
                    Spacer()
                }
                Slider(value: $selectedValue, in: 0...20)
                HStack {
                    Text("Selected_Value")
                    Text("=")
                    Text("\(UInt(selectedValue))")
                }
                HStack {
                    Text("Fibonacci_Member")
                    Text("=")
                    Text("\(viewModel.calculateNthFibonacciValue(n: UInt(selectedValue)))")
                }
                Spacer()
            }
            .padding(EdgeInsets(top: 0.0, leading: 16.0, bottom: 0.0, trailing: 16.0))
        }
        .padding(EdgeInsets(top: 32.0, leading: 0.0, bottom: 32.0, trailing: 0.0))
        .navigationTitle("Fibonacci")
    }
}

struct FibonacciView_Previews: PreviewProvider {
    static var previews: some View {
        FibonacciView()
            .environment(\.locale, .init(identifier: "en"))
    }
}
