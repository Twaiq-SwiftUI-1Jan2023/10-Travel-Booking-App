//
//  HotelView.swift
//  GoTour
//
//  Created by Amer Alyusuf on 20/01/2023.
//

import SwiftUI

struct HotelView: View {
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State private var selectedTab: String = "Details"
    
    var scroll_Tabs = ["Details", "Facilities", "Reviews"]
    var selectedHotel: Hotel
    
    var body: some View {
        ZStack {
            Colors.topaz
                .ignoresSafeArea(.all)
            
            VStack(spacing: 0) {
                // MARK: - Top Navigation
                VStack {
                    ZStack {
                        HStack {
                            Button { self.presentationMode.wrappedValue.dismiss() } label: {
                                Image(systemName: "arrow.left")
                            }
                            Spacer()
                        }
                        HStack {
                            Text("\(selectedHotel.name) Hotel")
                        }
                    }
                    
                    Spacer()
                }
                .padding()
                .foregroundColor(Colors.paleGrey)
                .font(.title3)
                .bold()
                
                
                // MARK: - White Area
                Spacer()
                VStack {
                    ZStack {
                        Colors.paleGrey
                        VStack(spacing: 0) {
                            
                            // MARK: - Image & TabView
                            selectedHotel.image
                                .resizable()
                                .clipShape(RoundedRectangle(cornerRadius: 20))
                                .frame(height: UIScreen.main.bounds.height/4)
                                .padding([.horizontal, .top], 32)
                            
                            HStack(spacing: 5) {
                                ForEach(scroll_Tabs, id: \.self) { tab in
                                    TabButton(title: tab, selectedTab: $selectedTab)
                                }
                                Spacer()
                                
                                Text("Direction")
                                    .foregroundColor(Colors.azulBlue)
                                    .padding()
                                
                            }
                            .padding(.horizontal)
                            
                            // MARK: - Tab Content
                            if selectedTab == "Details" {
                                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. ")
                                    .foregroundColor(Colors.black)
                                    .font(.body)
                                    .padding()
                            } else if selectedTab == "Facilities" {
                                let data = (1...12).map { "Item \($0)" }
                                ScrollView(.vertical, showsIndicators: false) {
                                    LazyVGrid(columns: Array(repeating: GridItem(.flexible(), spacing: 15), count: 4), spacing: 20) {
                                        ForEach(data, id: \.self) { item in
                                            Circle()
                                                .foregroundColor(Colors.iceBlue)
                                                .overlay {
                                                    Text("🏠")
                                                }
                                        }
                                    }
                                }
                                .padding()
                            } else if selectedTab == "Reviews" {
                                VStack {
                                    HStack(spacing: 15) {
                                        Text("Review 1")
                                            .font(.title3)
                                            .foregroundColor(Colors.black)
                                        Text("⭐️⭐️⭐️⭐️⭐️")
                                            .font(.title3)
                                        Spacer()
                                    }
                                    Divider()
                                    HStack(spacing: 15) {
                                        Text("Review 2")
                                            .font(.title3)
                                            .foregroundColor(Colors.black)
                                        Text("⭐️⭐️⭐️⭐️")
                                            .font(.title3)
                                        Spacer()
                                    }
                                }
                                .padding()
                            }
  
                            // MARK: - Bottom Buttons
                            Spacer()
                            ZStack {
                                Colors.white
                                VStack {
                                    HStack(spacing: 0) {
                                        Text("$\(selectedHotel.price)/")
                                            .foregroundColor(Colors.topaz)
                                            .font(.title3)
                                            .bold()
                                        Text(" night")
                                            .foregroundColor(Colors.black)
                                            .font(.body)
                                        
                                        Spacer()
                                        
                                        NavigationLink(destination: BookingView(selectedHotel: selectedHotel).navigationBarBackButtonHidden(true)) {
                                            RoundedRectangle(cornerRadius: 16)
                                                .foregroundColor(Colors.topaz)
                                                .padding(.horizontal)
                                                .overlay {
                                                    Text("Book Now")
                                                        .foregroundColor(Colors.white)
                                                        .bold()
                                                        .font(.title3)
                                                }
                                        }
                                    }
                                }
                                .padding([.vertical, .leading], 5)
                                .cornerRadius(20)
                            }
                            .cornerRadius(20)
                            .frame(height: 65)
                            .padding(20)
                        }
                    }
                }
                .ignoresSafeArea()
                .frame(height: UIScreen.main.bounds.height - 150)
            }
        }
    }
}

struct HotelView_Previews: PreviewProvider {
    static var previews: some View {
        HotelView(selectedHotel: Hotel.hotels.first!)
    }
}
