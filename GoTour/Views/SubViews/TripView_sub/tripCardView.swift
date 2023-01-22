//
//  tripCardView.swift
//  GoTour
//
//  Created by Amer Alyusuf on 22/01/2023.
//

import SwiftUI

struct tripCardView: View {
    
    @Binding var selectedTab: String
    var trip: Trip
    
    var body: some View {
        ZStack {
            Colors.white
            HStack {
                trip.hotel.image
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                Spacer()
                
                VStack {
                    HStack {
                        Text("\(trip.hotel.name) Hotel")
                            .font(.title3)
                            .foregroundColor(Colors.black)
                            .bold()
                        Spacer()
                    }
                    HStack {
                        VStack {
                            Text("Check-in")
                                .font(.caption)
                                .foregroundColor(Color.green)
                            Text(trip.checkIn, style: .date)
                                .font(.caption)
                                .foregroundColor(Colors.grey)
                        }
                        Spacer()
                        VStack {
                            Text("Check-out")
                                .font(.caption)
                                .foregroundColor(Color.red)
                            Text(trip.checkOut, style: .date)
                                .font(.caption)
                                .foregroundColor(Colors.grey)
                        }
                    }
                    HStack {
                        if selectedTab == "Upcoming" {
                            Button(action: {}) {
                                Text("📞 help")
                                    .foregroundColor(Colors.white)
                                    .font(.caption)
                                    .bold()
                                    .padding(.vertical)
                                    .padding(.horizontal, 5)
                                    .frame(minWidth: 75)
                                    .background(
                                        Capsule()
                                            .foregroundColor(Color.green)
                                    )
                            }
                            Button(action: {}) {
                                Text("↱ Direction")
                                    .foregroundColor(Colors.azulBlue)
                                    .font(.caption)
                                    .bold()
                                    .padding(.vertical)
                                    .padding(.horizontal, 5)
                                    .frame(minWidth: 75)
                                    .background(
                                        Capsule()
                                            .foregroundColor(Colors.iceBlue)
                                    )
                            }
                        } else if selectedTab == "Completed" {
                            NavigationLink(destination: ReviewView().navigationBarBackButtonHidden(true)) {
                                Text("Write us a Review")
                                    .foregroundColor(Colors.white)
                                    .font(.caption)
                                    .bold()
                                    .padding(.vertical)
                                    .padding(.horizontal, 5)
                                    .frame(minWidth: 75)
                                    .background(
                                        Capsule()
                                            .foregroundColor(Colors.mango)
                                    )
                            }
                        }
                    }
                }
                .padding(.horizontal)
            }
            .padding()
        }
    }
}
