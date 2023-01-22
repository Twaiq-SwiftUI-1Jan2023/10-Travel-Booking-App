//
//  OfferCardView.swift
//  GoTour
//
//  Created by Amer Alyusuf on 1/21/23.
//

import SwiftUI

struct OfferCardView: View {
    
    var offer: Offer
    
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .overlay {
                offer.image
                    .resizable()
                    .cornerRadius(20)
                VStack {
                    Spacer()
                    HStack {
                        Text(offer.title)
                            .foregroundColor(Colors.mango)
                            .font(.caption)
                            .bold()
                        
                        Spacer()
                    }
                    HStack {
                        Text(offer.description)
                            .font(.caption2)
                            .foregroundColor(Colors.white)
                            .lineLimit(3)
                        Spacer()
                    }
                }
                .padding()
                .background {
                    Colors.black
                        .opacity(0.5)
                        .cornerRadius(20)
                }
            }
            .frame(width: UIScreen.main.bounds.width/3, height: UIScreen.main.bounds.height/6)
    }
}
