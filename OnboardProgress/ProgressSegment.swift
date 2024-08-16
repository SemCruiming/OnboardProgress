//
//  ProgressSegment.swift
//  OnboardProgress
//
//  Created by Sem Cruiming on 13/08/2024.
//


import SwiftUI

struct ProgressSegment: View {
    let color: Color
    
    var body: some View {
        Rectangle()
            .fill(color)
            .frame(height: 4)
            .cornerRadius(2)
    }
}

#Preview {
    ProgressSegment(color: .white)
        .preferredColorScheme(.dark)
}

