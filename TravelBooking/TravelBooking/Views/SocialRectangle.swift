//
//  SocialRectangle.swift
//  TravelBooking
//
//  Created by Abdulkarim Koshak on 1/21/23.
//

import SwiftUI

struct SocialRectangle: View {
    
    private var name: String
    private var icon: String
    private var boxColor: Color
    private var textColor: Color
    
    init(name: String, icon: String, boxColor: Color, textColor: Color) {
        self.name = name
        self.icon = icon
        self.boxColor = boxColor
        self.textColor = textColor
    }
    
    var body: some View {
        ZStack {
            Button {
                
            } label: {
                RoundedRectangle(cornerRadius: 16)
                    .foregroundColor(boxColor)
                    .frame(width: 170, height: 60)
                    .overlay {
                        HStack(spacing: 20) {
                            Image(icon)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 25, height: 25)
                            
                            Text(name)
                                .font(Font.custom("Poppins-Regular", size: 15))
                                .foregroundColor(textColor)
                        }
                    }
            }
        }
    }
}
