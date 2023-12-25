//
//  PascalsTriangleView.swift
//  Algorithms-SwiftUI-Combine-Swift
//
//  Created by Chris Allinson on 2023-12-25.
//

import SwiftUI

struct PascalsTriangleView: View {
    private var viewModel: PascalsTriangleManagable = PascalsTriangleViewModel()
    @State private var selectedValue: Double = 0
    
    var pascalsTriangleRow: String {
        "\(viewModel.generatePascalsTriangle(row: Int(selectedValue)))"
    }
    
    var body: some View {
        NavigationView {
            VStack(spacing: 32) {
                VStack(spacing: 16) {
                    HStack {
                        Text("Select_A_Value")
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
                        Text("Pascals_Triangle_Row")
                        Text("=")
                        Text("\(pascalsTriangleRow)")
                    }
                }
                Spacer()
            }
            .padding(EdgeInsets(top: 0.0, leading: 16.0, bottom: 0.0, trailing: 16.0))
        }
        .padding(EdgeInsets(top: 32.0, leading: 0.0, bottom: 32.0, trailing: 0.0))
        .navigationTitle("Pascals_Triangle")
    }
}

struct PascalsTriangleView_Previews: PreviewProvider {
    static var previews: some View {
        PascalsTriangleView()
            .environment(\.locale, .init(identifier: "en"))
    }
}
