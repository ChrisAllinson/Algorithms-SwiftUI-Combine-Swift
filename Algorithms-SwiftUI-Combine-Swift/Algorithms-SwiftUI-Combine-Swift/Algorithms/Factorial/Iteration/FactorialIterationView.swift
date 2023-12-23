//
//  FactorialIterationView.swift
//  Algorithms-SwiftUI-Combine-Swift
//
//  Created by Chris Allinson on 2023-12-21.
//

import SwiftUI

struct FactorialIterationView: View {
    private var viewModel: FactorialIterationManagable = FactorialIterationViewModel()
    @State private var selectedValue: Double = 0
    
    var body: some View {
        NavigationView {
            VStack(spacing: 32) {
                HStack {
                    Text("Select_A_Value")
                    Spacer()
                }
                Slider(value: $selectedValue, in: 0...10)
                Text("\(UInt(selectedValue))! = \(viewModel.calculateFactorial(of: UInt(selectedValue)))")
                Spacer()
            }
            .padding(EdgeInsets(top: 0.0, leading: 16.0, bottom: 0.0, trailing: 16.0))
        }
        .padding(EdgeInsets(top: 32.0, leading: 0.0, bottom: 32.0, trailing: 0.0))
        .navigationTitle("Factorial_Iteration")
    }
}

#Preview {
    FactorialIterationView()
}
