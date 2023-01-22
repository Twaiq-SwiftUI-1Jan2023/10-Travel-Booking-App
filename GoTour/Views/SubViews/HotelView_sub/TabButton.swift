//
//  TabButton.swift
//  GoTour
//
//  Created by Amer Alyusuf on 21/01/2023.
//

import SwiftUI

struct TabButton: View {
    
    var title: String
    @Binding var selectedTab: String
    
    var body: some View {
        Button(action: {
            withAnimation(.spring()) {
                selectedTab = title
            }
        }) {
            VStack(alignment: .leading, spacing: 6) {
                Text(title)
                    .fontWeight(.bold)
                    .padding(.top)
                    .padding(.horizontal, 5)
                    .foregroundColor(selectedTab == title ? Colors.topaz : Colors.black)
            }
        }
    }
}
