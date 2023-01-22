//
//  ExploreView.swift
//  GoTour
//
//  Created by Amer Alyusuf on 20/01/2023.
//

import SwiftUI

struct HomeView: View {
    @ObservedObject var selectedUser = SelectedUser()
    let hotels = Hotel.hotels
    let offers = Offer.offers
    
    var body: some View {
        
        ZStack {
            // MARK: - Image Section
            VStack(spacing: 0) {
                ZStack {
                    VStack {
                        Images.explore
                            .resizable()
                            .ignoresSafeArea(.all, edges: .top)
                            .frame(width: UIScreen.main.bounds.width, height: 280)
                            .overlay {
                                Colors.black
                                    .opacity(0.5)
                            }
                        Spacer()
                    }
                    VStack {
                        HStack {
                            Button { } label: {
                                Image(systemName: "menubar.arrow.down.rectangle")
                                    .font(.title2)
                                    .foregroundColor(Colors.white)
                            }
                            Spacer()
                            Button { } label: {
                                User.users[SelectedUser().getUser() ?? 0].image
                                    .font(.title2)
                                    .foregroundColor(Colors.grey)
                                    .padding(8)
                                    .background {
                                        Circle()
                                            .foregroundColor(Colors.white)
                                    }
                            }
                        }
                        .padding(.horizontal)
                        Spacer()
                        
                        HStack {
                            Text("Let's Explore \n The World!")
                                .font(.largeTitle)
                                .fontWeight(.heavy)
                                .foregroundColor(Colors.white)
                                .multilineTextAlignment(.leading)
                            Spacer()
                        }
                        .padding([.leading, .bottom])
                        HStack {
                            Image(systemName: "circle.fill")
                                .foregroundColor(Colors.white)
                            
                            Text("Your in Osaka")
                                .font(.body)
                                .foregroundColor(Colors.white)
                                .multilineTextAlignment(.leading)
                                .bold()
                            Spacer()
                        }
                        .padding([.leading, .bottom])
                    }
                    .padding(.vertical, 50)
                }
                .frame(width: UIScreen.main.bounds.width, height: 280)
                // MARK: - White Section
                Spacer()
            }
            
            // MARK: - WhiteArea Section
            VStack(spacing: 0) {
                Spacer()
                ZStack {
                    Colors.paleGrey
                    VStack {
                        // MARK: - Top Buttons
                        filterButtons()
                        .padding(.horizontal)
                        
                        HStack {
                            Text("Popular Offer")
                                .font(.title3)
                                .bold()
                                .foregroundColor(Colors.black)
                            Spacer()
                        }
                        .padding(.top)
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack {
                                ForEach(offers) { offer in
                                    OfferCardView(offer: offer)
                                }
                            }
                        }
                        
                        HStack {
                            Text("Hotel Near You")
                                .font(.title3)
                                .bold()
                                .foregroundColor(Colors.black)
                            Spacer()
                        }
                        .padding(.top)
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack {
                                ForEach(hotels) { hotel in
                                    NavigationLink(destination: HotelView(selectedHotel: hotel).navigationBarBackButtonHidden(true)) {
                                        HotelCardView(hotel: hotel)
                                    }
                                }
                            }
                        }
                    }
                    .padding()
                }
                .frame(height: UIScreen.main.bounds.height - 320)
                .background {
                    RoundedRectangle(cornerRadius: 35)
                        .foregroundColor(Colors.grey)
                }
                .cornerRadius(40, corners: [.topLeft, .topRight])
                
            }
            
        }
        .edgesIgnoringSafeArea(.top)
    }
}
