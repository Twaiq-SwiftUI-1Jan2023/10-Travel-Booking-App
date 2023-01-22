//
//  HomeView.swift
//  Travel_Booking_App
//
//  Created by Raneem AlRashoud on 28/06/1444 AH.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.6702727675, green: 0.7386049628, blue: 0.7854616046, alpha: 1)), Color(#colorLiteral(red: 0.9962391257, green: 0.8958832622, blue: 0.8005118966, alpha: 1))]), startPoint: .top, endPoint: .bottom)
            
            LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.2299459577, green: 0.6377876401, blue: 0.7500101328, alpha: 1)).opacity(0.6), Color(#colorLiteral(red: 0.99701792, green: 0.8917155862, blue: 0.8008757234, alpha: 1)).opacity(0.3)]), startPoint: .topLeading, endPoint: .bottomTrailing)
            
            VStack {
                
                HomeContentView()
                
            }
            
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct HomeContentView: View {
    
    let firstModelData = [
        firstHomeModel(typeImage: "airplane.arrival", type: "Arrival", distance: "12km/h", time: "18:00"),
        firstHomeModel(typeImage: "airplane.departure", type: "departure", distance: "30km/h", time: "19:00"),
        
        firstHomeModel(typeImage: "airplane.departure", type: "departure", distance: "10km/h", time: "20:00")
        ,
        firstHomeModel(typeImage: "airplane.arrival", type: "Arrival", distance: "10km/h", time: "21:00")
    ]
    
    let hotel = ["Pan Pacific", "Proga Inn", "Glen Rothaye", "Fourseason","Pan Pacific"]
    
    var body: some View {
        
        Spacer(minLength: 100)
        HStack {
            Image (systemName: "text.alignleft")
                .font(.title)
            Spacer()
        }.padding()
            .padding(.top, 30)
            .foregroundColor(.secondary)
        
        
        
        ScrollView (.horizontal) {
            
            HStack(spacing: 20)  {
                ForEach(firstModelData, id: \.id) { model in
                    HStack {
                        
                        VStack {
                            Image (systemName: model.typeImage)
                                .font(.title)
                                .padding()
                            Text(model.type)
                            Text(model.time)
                                .bold()
                            
                        }
                        .foregroundColor(.secondary)
                        
                    }
                    .padding()
                    .frame(width: 150, height: 150)
                    .background(.white.opacity(0.25))
                    .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))
                    .shadow(color: Color.black.opacity(0.2), radius: 10, x: 0, y: 10)
                    
                }
            }
            
            
        }
        .padding([.bottom,.trailing, .leading])
        
        
        ZStack(alignment: .topLeading) {
            
            Color.white.opacity(0.25)
                .frame(width: 420, height: 700)
                .clipShape(RoundedRectangle(cornerRadius: 60, style: .continuous))
            
            HStack {
                
                
                
                Text("Popular Offer")
                    .bold()
                    .padding()
                
                
            }.foregroundColor(.secondary)
                .padding()
                .font(.title2)
            
            ScrollView (.horizontal) {
                
                HStack(spacing: 20)  {
                    ForEach(firstModelData, id: \.id) { model in
                        VStack {
                            
                            VStack {
                                Text("RUH")
                                Text(model.time)
                                
                                Text(model.distance)
                                    .bold()
                                
                                
                            }
                            .foregroundColor(.secondary)
                            
                        }
                        .padding()
                        .frame(width: 100, height: 150)
                        .background(.white.opacity(0.25))
                        .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))
                        
                        
                    }
                }.padding(.top, 40)
                
                
            } .padding()
                .padding(.top, 20)
            
            
            VStack {
                HStack {
                    
                    
                    
                    Text("Hotel Near You")
                        .bold()
                        .padding()
                    
                    Spacer()
                }.foregroundColor(.secondary)
               
                    .font(.title2)
                ScrollView(.vertical, showsIndicators: false) {
                    VStack {
                        ForEach(1..<4) { i in
                            HStack {
                                Text(hotel[i])
                           
                                
                                Spacer()
                           
                                Text("$1200 / ")
                                + Text("night")
                                    .font(.system(size: 15))
                                
                                
                            
                                
                            }.foregroundColor(.secondary)
                                .font(.title3)
                            Divider()
                        }
                    }
                    
                    .padding(.horizontal)
                    
                    
                }.padding()
            } .padding(.top, 250)
           
        }
        .padding(.top)
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
