//
//  Algorithms_SwiftUI_Combine_SwiftApp.swift
//  Algorithms-SwiftUI-Combine-Swift
//
//  Created by Chris Allinson on 2023-12-21.
//

import SwiftUI

@main
struct Algorithms_SwiftUI_Combine_SwiftApp: App {
    @StateObject private var dataModel = DataModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(dataModel)
        }
    }
}
