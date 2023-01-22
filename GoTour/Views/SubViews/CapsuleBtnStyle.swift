//
//  CapsuleBtnStyle.swift
//  GoTour
//
//  Created by Amer Alyusuf on 22/01/2023.
//

import SwiftUI

struct CapsuleButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .background(Color.green)
            .foregroundColor(Color.green)
            .clipShape(Capsule())
    }
}
