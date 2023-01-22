//
//  filterButtons.swift
//  GoTour
//
//  Created by Amer Alyusuf on 21/01/2023.
//

import SwiftUI

struct filterButtons: View {
    var body: some View {
        HStack {
            VStack {
                Image(systemName: "case.fill")
                    .font(.body)
                    .foregroundColor(Colors.lavenderBlue)
                    .padding(10)
                
                    .background(
                        Circle()
                            .foregroundColor(Colors.palePurple)
                    )
                
                Text("Trips")
                    .foregroundColor(Colors.grey)
                    .font(.body)
            }
            Spacer()
            VStack {
                Image(systemName: "house.lodge.fill")
                    .font(.body)
                    .foregroundColor(Color.pink)
                    .padding(10)
                
                    .background(
                        Circle()
                            .foregroundColor(Colors.palePurple)
                    )
                
                Text("Hotels")
                    .foregroundColor(Colors.grey)
                    .font(.body)
            }
            Spacer()
            VStack {
                Image(systemName: "airplane")
                    .font(.body)
                    .foregroundColor(Colors.mango)
                    .padding(10)
                
                    .background(
                        Circle()
                            .foregroundColor(Colors.palePurple)
                    )
                
                Text("Flights")
                    .foregroundColor(Colors.grey)
                    .font(.body)
            }
            Spacer()
            VStack {
                Image(systemName: "staroflife.fill")
                    .font(.body)
                    .foregroundColor(Colors.azulBlue)
                    .padding(10)
                
                    .background(
                        Circle()
                            .foregroundColor(Colors.palePurple)
                    )
                
                Text("Offers")
                    .foregroundColor(Colors.grey)
                    .font(.body)
            }
        }
    }
}
