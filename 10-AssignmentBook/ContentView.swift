//
//  ContentView.swift
//  10-AssignmentBook
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            
            ThreedView().tabItem{Image(systemName: "house.fill")}
            regsView().tabItem{Image(systemName: "magnifyingglass.circle")}
            regsView().tabItem{Image(systemName: "magnifyingglass.circle")}
            regsView().tabItem{Image(systemName: "magnifyingglass.circle")}
            regsView().tabItem{Image(systemName: "magnifyingglass.circle")}
            

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
