//
//  TabMenuView.swift
//  travel Booking app
//
//  Created by Abdullah Aloufi on 28/06/1444 AH.
//

import SwiftUI

struct TabMenuView: View {
    var body: some View {
        TabView {
            Discover()
                .tabItem {
                    Label("Menu", systemImage: "list.dash")
                }
            
            TravelDetails()
                .tabItem {
                    Label("Order", systemImage: "square.and.pencil")
                }
            
            TripsView()
                .tabItem {
                    Label("Trips", systemImage: "star.leadinghalf.filled")
                }
        }
        
    }
}

struct TabMenuView_Previews: PreviewProvider {
    static var previews: some View {
        TabMenuView()
    }
}
