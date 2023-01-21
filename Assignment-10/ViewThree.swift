//
//  ViewThree.swift
//  Assignment-10
//
//  Created by ahmed alharbi on 28/06/1444 AH.
//

import SwiftUI

// Images for popular offer


struct ViewThree: View {
    var offers = ["t1","t2","t3","t4","t5","t6","t7"]
    var hotels = ["h1","h2","h3","h4","h5","h6","h7"]
    @State var search = ""
    var body: some View {
        TabView{
            ZStack {
                
                Color("light-green")
                    .ignoresSafeArea()
                HStack(alignment:.bottom) {
                    Image("wallpaper")
                        .resizable()
                        .scaledToFit()
                        .padding(.top,-480)
                        .padding(.horizontal,40)
                }
                
                
                Rectangle()
                    .frame(width: 400,height: 1000)
                    .padding(.bottom,-200)
                    .cornerRadius(50)
                    .foregroundColor(Color("light-gray"))
                    .offset(y: 150)
                
                
                VStack {
                    HStack(spacing: 30) {
                        
                        Button {
                            
                        } label: {
                            VStack {
                                ZStack {
                                    Circle()
                                        .frame(width: 60)
                                        .foregroundColor(.purple)
                                        .opacity(0.2)
                                    Image(systemName: "figure.walk")
                                        .font(.largeTitle)
                                        .foregroundColor(.purple)
                                    
                                }
                                Text("Trips")
                            }
                        }
                        
                        
                        Button {
                            
                        } label: {
                            VStack {
                                ZStack {
                                    Circle()
                                        .frame(width: 60)
                                        .foregroundColor(.pink)
                                        .opacity(0.2)
                                    Image(systemName: "house.fill")
                                        .font(.largeTitle)
                                        .foregroundColor(.pink)
                                    
                                }
                                Text("Hotels")
                            }
                        }
                        
                        
                        Button {
                            
                        } label: {
                            VStack {
                                ZStack {
                                    Circle()
                                        .frame(width: 60)
                                        .foregroundColor(.yellow)
                                        .opacity(0.2)
                                    Image(systemName: "airplane")
                                        .font(.largeTitle)
                                        .foregroundColor(.yellow)
                                    
                                }
                                Text("Flights")
                            }
                        }
                        
                        
                        Button {
                            
                        } label: {
                            VStack {
                                ZStack {
                                    Circle()
                                        .frame(width: 60)
                                        .foregroundColor(.blue)
                                        .opacity(0.2)
                                    Image(systemName: "dollarsign.circle.fill")
                                        .font(.largeTitle)
                                        .foregroundColor(.blue)
                                    
                                }
                                Text("Offers")
                            }
                        }
                        
                        
                    }
                }.padding(.top,-220)
                
                VStack(spacing: 40) {
                    
                    VStack {
                        Text("Popular Offer")
                            .bold()
                            .padding(.trailing,230)
                        
                        ScrollView(.horizontal,showsIndicators: false){
                            HStack {
                                ForEach(0..<offers.count - 1) { item in
                                    
                                    Image(offers[item])
                                        .resizable()
                                        .frame(width: 120,height: 140)
                                        .clipShape(RoundedRectangle(cornerRadius: 25))
                                    
                                }
                            }
                        }
                        
                        
                        
                    }.frame(height: 360)
                    VStack {
                        Text("Hotels Near You")
                            .bold()
                            .padding(.trailing,210)
                        
                        ScrollView(.horizontal,showsIndicators: false){
                            HStack {
                                ForEach(0..<hotels.count - 1) { item in
                                    
                                    ZStack {
                                        
                                        Image(hotels[item])
                                            .resizable()
                                            .frame(width: 120,height: 140)
                                            .clipShape(RoundedRectangle(cornerRadius: 25))
                                    }
                                    
                                }
                            }
                        }
                        
                        
                        
                    }.frame(height: 0)
                    
                }.padding(.all)
                
                
                
                
            }
            .tabItem {
                VStack {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
            }
            NavigationView{
                
                VStack{
                    
                    Image("2")
                        .resizable()
                        .scaledToFit()
                    
                    Text(" ")
                        .font(.largeTitle)
                        .searchable(text: $search)
                        .navigationTitle("Search for hotels")
                    
                    
                }
                
                
            }
            .tabItem {
                VStack {
                    Image(systemName: "magnifyingglass")
                    Text("Search")
                }
            }
            ViewFour()
                .tabItem {
                    VStack {
                        Image(systemName: "airplane.departure")
                        Text("Trip")
                    }
                }
            Text("Offers")
                .tabItem {
                    VStack {
                        Image(systemName: "dollarsign.arrow.circlepath")
                        Text("Offers")
                    }
                }
            Text("Profile")
            
                .tabItem {
                    VStack {
                        Image(systemName: "person.fill")
                        Text("Profile")
                    }
                }
                
        }.accentColor(Color("light-green"))
        
    }
}

struct ViewThree_Previews: PreviewProvider {
    static var previews: some View {
        ViewThree()
    }
}
