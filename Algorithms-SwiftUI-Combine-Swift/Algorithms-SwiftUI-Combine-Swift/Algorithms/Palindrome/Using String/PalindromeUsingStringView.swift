//
//  PalindromeUsingStringView.swift
//  Algorithms-SwiftUI-Combine-Swift
//
//  Created by Chris Allinson on 2023-12-25.
//

import SwiftUI

struct PalindromeUsingStringView: View {
    private var viewModel: PalindromeUsingStringManagable = PalindromeUsingStringViewModel()
    @State private var selectedValue: String = ""
    
    var isPalindromeString: String {
        "\(viewModel.determineIfPalindrome(selectedValue))"
    }
    
    var body: some View {
        NavigationView {
            VStack(spacing: 32) {
                VStack(spacing: 16) {
                    HStack {
                        Text("Enter_Value")
                        Spacer()
                    }
                    HStack {
                        TextField("", text: $selectedValue)
                            .padding(EdgeInsets(top: 4.0, leading: 4.0, bottom: 4.0, trailing: 4.0))
                            .border(Color.black)
                        Spacer()
                    }
                }
                VStack(spacing: 16) {
                    HStack {
                        Text("Is_A_Palindrome")
                        Text("=")
                        Text("\(isPalindromeString)")
                    }
                }
                Spacer()
            }
            .padding(EdgeInsets(top: 0.0, leading: 16.0, bottom: 0.0, trailing: 16.0))
        }
        .padding(EdgeInsets(top: 32.0, leading: 0.0, bottom: 32.0, trailing: 0.0))
        .navigationTitle("Palindrome_Using_String")
    }
}

struct PalindromeUsingStringView_Previews: PreviewProvider {
    static var previews: some View {
        PalindromeUsingStringView()
            .environment(\.locale, .init(identifier: "en"))
    }
}
