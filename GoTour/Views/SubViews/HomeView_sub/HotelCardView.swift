//
//  HotelCardView.swift
//  GoTour
//
//  Created by Amer Alyusuf on 1/21/23.
//

import SwiftUI

struct HotelCardView: View {
    
    var hotel: Hotel
    
    var body: some View {
        ZStack {
            Colors.white
            VStack {
                Rectangle()
                    .overlay {
                        hotel.image
                            .resizable()
                    }
                    .frame(width: UIScreen.main.bounds.width/2, height: UIScreen.main.bounds.height/8)
                
                HStack {
                    Text(hotel.name)
                        .foregroundColor(Colors.black)
                        .font(.caption)
                        .bold()
                    Spacer()
                }
                .padding(.leading, 5)
                
                HStack(spacing: 0) {
                    ForEach(1..<5) { _ in
                        Text("⭐️")
                            .font(.caption)
                    }
                    Spacer()
                    
                    Text("$\(hotel.price)")
                        .foregroundColor(Colors.topaz)
                        .font(.caption)
                        .bold()
                    
                    Text("/night")
                        .foregroundColor(Colors.black)
                        .font(.caption)
                        .bold()
                }
                .padding(5)
                
                Spacer()
                
            }
        }
        .frame(width: UIScreen.main.bounds.width/2, height: UIScreen.main.bounds.height/5)
        .cornerRadius(20)
    }
}
