//
//  ContentView.swift
//  OnboardProgress
//
//  Created by Sem Cruiming on 13/08/2024.
//

import SwiftUI

struct ContentView: View {
    @Environment(ProgressModel.self) var progressModel
    var body: some View {
        VStack {
            ProgressBar()
            Spacer()
            HStack {
                Button(action: {
                    if progressModel.progressAmount > 1 {
                        progressModel.progressAmount -= 1
                    }
                }, label: {
                    Text("Previous")
                })
                Button(action: {
                    if progressModel.progressAmount < 6 {
                        progressModel.progressAmount += 1
                    }
                }, label: {
                    Text("Next")
                })
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
        .environment(ProgressModel())
        .preferredColorScheme(.dark)
}
