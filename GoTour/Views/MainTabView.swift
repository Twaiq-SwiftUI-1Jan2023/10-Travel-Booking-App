//
//  MainTabView.swift
//  GoTour
//
//  Created by Amer Alyusuf on 1/21/23.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        NavigationView {
            TabView {
                HomeView()
                    .tabItem {
                        Image(systemName: "house")
                        Text("Home")
                    }
                SearchView()
                    .tabItem {
                        Image(systemName: "magnifyingglass")
                        Text("Search")
                    }
                TripView()
                    .tabItem {
                        Image(systemName: "suitcase")
                        Text("Trip")
                    }
                OfferView()
                    .tabItem {
                        Image(systemName: "seal")
                        Text("Offers")
                    }
                ProfileView()
                    .tabItem {
                        Image(systemName: "person")
                        Text("Profile")
                    }
            }
        }
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
