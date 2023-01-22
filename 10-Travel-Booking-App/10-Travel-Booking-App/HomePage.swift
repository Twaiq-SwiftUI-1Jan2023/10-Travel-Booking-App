//
//  HomePage.swift
//  10-Travel-Booking-App
//
//  Created by سرّاء. on 27/06/1444 AH.
//

import SwiftUI

struct HomePage: View {
    let p1 = PlacesCard.pcard
    let h1 = HotelCard.Hcard
    var body: some View {
        
        TabView {
            
            ZStack{
                Image("travel3")
                    .resizable()
                    .frame(width: 400, height: 300)
                    .padding(.bottom, 600)
                    .ignoresSafeArea()
                
                VStack{
                    Spacer()
                    VStack{
                        HStack{
                            ZStack{
                                Circle()
                                    .fill(Color("purple"))
                                    .frame(width: 50)
                                
                                Image(systemName: "figure.walk")
                                    .resizable()
                                    .frame(width: 10, height: 20)
                                    .foregroundColor(Color.purple)
                                
                                
                                
                            }         .padding(.leading)
                            Spacer()
                            
                            ZStack{
                                Circle()
                                    .fill(Color("pink"))
                                    .frame(width: 50)
                                
                                Image(systemName: "house.fill")
                                    .resizable()
                                    .frame(width: 15, height: 15)
                                    .foregroundColor(Color.pink)
                                
                                
                            }
                            Spacer()
                            
                            ZStack{
                                Circle()
                                    .fill(Color("yellow"))
                                    .frame(width: 50)
                                
                                Image(systemName: "airplane")
                                    .resizable()
                                    .frame(width: 15, height: 15)
                                    .foregroundColor(Color.yellow)
                                
                                
                            }
                            Spacer()
                            
                            
                            ZStack{
                                Circle()
                                    .fill(Color("blue"))
                                    .frame(width: 50)
                                
                                Image(systemName: "percent")
                                    .resizable()
                                    .frame(width: 15, height: 15)
                                    .foregroundColor(Color.blue)
                                
                                
                                
                            } .padding(.trailing)
                            
                            
                        }
                        HStack{
                            Text("Trip")
                            Spacer()
                            Text("Hotels")
                            Spacer()
                            Text("Flight")
                            Spacer()
                            Text("Offers")
                        }.padding(.leading)
                            .foregroundColor(Color.gray)
                        
                            .padding(.trailing)
                        
                        
                        //  Spacer()
                        VStack(alignment: .leading){
                            Text("Popular Offer")
                                .font(.title3)
                                .padding()
                            
                            
                            
                            ScrollView(.horizontal, showsIndicators: true){
                                HStack{
                                    ForEach(p1, id: \.id) {i in
                                        ZStack{
                                            Image(i.image)
                                                .resizable()
                                                .frame(width: 120, height: 130)
                                                .cornerRadius(16)
                                            
                                            VStack(alignment: .leading){
                                                Text(i.text)
                                                    .foregroundColor(Color.orange)
                                                    .bold()
                                                    .padding(.leading)
                                                
                                                Text(i.disc)
                                                    .foregroundColor(Color.white)
                                                    .font(.footnote)
                                                
                                            }.padding(.top , 70)
                                        }
                                    }
                                }
                            }.padding(.bottom)
                            // Spacer()
                            
                            Text("Hotel Near You")
                                .font(.title3)
                                .padding()
                            
                            
                            
                            
                            ScrollView(.horizontal, showsIndicators: true){
                                HStack{
                                    ForEach(h1, id: \.id) {i in
                                        VStack {
                                            ZStack{
                                                Image(i.image)
                                                    .resizable()
                                                    .frame(width: 160, height: 100)
                                                    .cornerRadius(10)
                                                
                                                ZStack{
                                                    Circle()
                                                        .fill(Color("blue"))
                                                        .frame(width: 20)
                                                    
                                                    Image(systemName: "bookmark.fill")
                                                        .resizable()
                                                        .frame(width: 6, height: 10)
                                                        .foregroundColor(Color.blue)
                                                    
                                                }.padding(.bottom, 70)
                                                    .padding(.leading, 130)
                                            }
                                            
                                            VStack(alignment: .leading){
                                                Text(i.text1)
                                                    .font(.footnote)
                                                    .bold()
                                                HStack(spacing: 2){
                                                    ForEach(0..<5) { item in
                                                        Image(systemName:"star.fill")
                                                            .resizable()
                                                            .frame(width: 8, height: 8)
                                                            .foregroundColor(.yellow)
                                                           
                                                    }
                                                    Text(i.text2)
                                                        .foregroundColor(Color.cyan)
                                                        .font(.footnote)
                                                        .padding(.leading)
                                                    Text("/night")
                                                        .font(.footnote)
                                                        .foregroundColor(Color.gray)
                                                       
                                                }
                                            }
                                            Spacer()
                                        } .frame(width: 160, height: 160)
                                            .background(Color("Color1"))
                                            .cornerRadius(10)
                                    }
                                }
                            }.padding(.bottom)
                            
                            
                            Spacer()
                        }
                        
                        
                    }.padding(.leading)
                        .padding(.top, 20)
                        .frame(width: 400, height: 640)
                        .background(Color.white)
                        .cornerRadius(48)
                    
                }
                
            }
            
            .tabItem{
                Image(systemName: "house.fill")
                Text("Home") }
            
            Text("Search Tab")
                .tabItem{
                    Image(systemName: "magnifyingglass")
                    Text("Search") }
            
            TripsPage()
                .tabItem{
                    Image(systemName: "handbag")
                    Text("Trip") }
            
            Text("Offers Tab")
                .tabItem{
                    Image(systemName: "percent")
                    Text("Offers") }
            
            Text("Profile Tab")
                .tabItem{
                    Image(systemName: "person")
                    Text("Profile") }
            
        }.padding(.bottom, -50)
        
    }
}

struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
        HomePage()
    }
}
