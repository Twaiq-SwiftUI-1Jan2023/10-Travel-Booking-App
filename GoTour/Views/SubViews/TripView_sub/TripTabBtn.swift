//
//  TripTabBtn.swift
//  GoTour
//
//  Created by Amer Alyusuf on 22/01/2023.
//

import SwiftUI

struct TripTabBtn: View {
    var title: String
    @Binding var selectedTab: String
    
    var body: some View {
        Button(action: {
            withAnimation(.spring()) {
                selectedTab = title
            }
        }) {
            ZStack {
                Color.clear
                
                VStack() {
                    Text(title)
                        .fontWeight(.bold)
                        .foregroundColor(selectedTab == title ? Colors.white : Colors.topaz)
                }
            }
            .frame(height: 65)
            .background(selectedTab == title ? Colors.topaz : Colors.white)
            
        }
    }
}
