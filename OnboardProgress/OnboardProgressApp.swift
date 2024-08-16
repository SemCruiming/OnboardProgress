//
//  OnboardProgressApp.swift
//  OnboardProgress
//
//  Created by Sem Cruiming on 13/08/2024.
//

import SwiftUI

@main
struct OnBoardProgressApp: App {
    @State var progressManager = ProgressModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(progressManager)
        }
    }
}
