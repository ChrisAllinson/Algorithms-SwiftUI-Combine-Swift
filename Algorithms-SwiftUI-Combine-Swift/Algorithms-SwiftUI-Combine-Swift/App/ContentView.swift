//
//  ContentView.swift
//  Algorithms-SwiftUI-Combine-Swift
//
//  Created by Chris Allinson on 2023-12-21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ListAlgorithmsView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(DataModel())
            .environment(\.locale, .init(identifier: "en"))
    }
}
