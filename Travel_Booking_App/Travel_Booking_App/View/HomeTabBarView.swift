//
//  HomeTabBarView.swift
//  Travel_Booking_App
//
//  Created by Raneem AlRashoud on 28/06/1444 AH.
//

import SwiftUI

struct HomeTabBarView: View {
    @State private var selected = 0
    var body: some View {
        
     
        
        TabView(selection: $selected) {
            
          HomeView().navigationBarHidden(true)
                .tag(0)
                .tabItem {
                    Image (systemName: "person")
                    Text("Home")
                }
            
            

            HomeView().navigationBarHidden(true)
                .tag(1)
                .tabItem {
                    Image (systemName: "magnifyingglass")
                    Text("Search")
                }
            
            HomeView().navigationBarHidden(true)
                .tag(2)
                .tabItem {
                    Image (systemName: "airplane.departure")
                    Text("Trip")
                }
            
            
            
            HomeView().navigationBarHidden(true)
                .tag(3)
                .tabItem {
                    Image(systemName: "ticket")
                    Text("Offers")
                    
                }
            HomeView().navigationBarHidden(true)
                .tag(3)
                .tabItem {
                    Image(systemName: "person")
                    Text("Profile")
                    
                }
        }
        .accentColor((Color("lightBlue")))

     
        
        
        
        
    }
}

struct HomeTabBarView_Previews: PreviewProvider {
    static var previews: some View {
        HomeTabBarView()
    }
}
