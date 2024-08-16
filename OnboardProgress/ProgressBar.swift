//
//  ProgressBar.swift
//  OnboardProgress
//
//  Created by Sem Cruiming on 13/08/2024.
//

import SwiftUI

struct ProgressBar: View {
    @Environment(ProgressModel.self) var progressModel

    var body: some View {
        HStack {
            ForEach(1...6, id: \.self) { index in
                if index <= progressModel.progressAmount {
                    Button(action: {
                        progressModel.progressAmount = index
                    }, label: {
                        ProgressSegment(color: .white)
                    })
                    .buttonStyle(.plain)

                } else {
                    Button(action: {
                        progressModel.progressAmount = index
                    }, label: {
                        ProgressSegment(color: .gray)
                    })
                    .buttonStyle(.plain)

                }
            }
        }
    }
}

#Preview {
    ProgressBar()
        .preferredColorScheme(.dark)
        .environment(ProgressModel())
}
