//
//  TripsView.swift
//  GoTour
//
//  Created by Amer Alyusuf on 20/01/2023.
//

import SwiftUI

struct TripView: View {
    
    @State private var selectedTab: String = "Upcoming"
    var scroll_Tabs = ["Upcoming", "Completed", "Cancelled"]
    @ObservedObject var selectedUser = SelectedUser()
    
    let users = User.users
    
    var body: some View {
        ZStack {
            Colors.topaz
                .ignoresSafeArea(.all, edges: .top)
            VStack {
                HStack {
                    Text("My Trips")
                        .font(.largeTitle)
                        .bold()
                        .foregroundColor(Colors.white)
                }
                .padding(.top, 50)
                
                VStack {
                    ZStack {
                        Colors.paleGrey
                        
                        VStack {
                            HStack(spacing: 0) {
                                ForEach(scroll_Tabs, id: \.self) { tab in
                                    TripTabBtn(title: tab, selectedTab: $selectedTab)
                                }
                            }
                            .padding([.horizontal, .top])
                            
                            ScrollView(.vertical) {
                                ForEach(users[0].trip) { trip in
                                    if selectedTab == "Upcoming" && trip.upcoming && !trip.canceled {
                                        tripCardView(selectedTab: $selectedTab, trip: trip)
                                    } else if selectedTab == "Completed" && trip.completed && !trip.canceled {
                                        tripCardView(selectedTab: $selectedTab, trip: trip)
                                    } else if selectedTab == "Cancelled" && trip.canceled {
                                        tripCardView(selectedTab: $selectedTab, trip: trip)
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        .padding(.bottom, 20)
    }
}

struct TripView_Previews: PreviewProvider {
    static var previews: some View {
        TripView()
    }
}
