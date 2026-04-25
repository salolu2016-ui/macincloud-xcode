//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by user286595 on 4/22/26.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @State private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(modelData)
        }
    }
}
