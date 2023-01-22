//
//  secondV.swift
//  bookingApp
//
//  Created by Sara Alahmdi on 27/06/1444 AH.
//

import SwiftUI

struct secondV: View {
    @State var Places:[String] = ["1","2","3","4","5","6"]
    @State var Hotels:[String] = ["ro","roo","rooo"]
    var body: some View {
        
        ZStack {
            Image("to")
                .resizable()
                .ignoresSafeArea()
            RoundedRectangle(cornerRadius: 40)
                .fill(.white)
                .padding(.bottom, -150.0)
                .opacity(0.5)
                .frame(width: 400.0, height: 520.0, alignment: .bottom)
            
            VStack {
                    Text("Let's Explore                                                      the World!")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(Color.black)
                        .padding(.leading)
                
                    HStack {
                        Image(systemName: "mappin.and.ellipse")
                        Text("You Are In Sauth Africa")
                    }
                    .padding(.leading, -160.0)
                    .foregroundColor(Color.black)
                    Text("")
                    Spacer()
                
                HStack {
                    
                    Button {
                        
                    } label: {
                        Image(systemName: "airplane.circle")
                            .foregroundColor(Color.black)
                            .font(.system(size:50))
                        
                        Button {
                            
                        } label: {
                            Image(systemName: "house.circle")
                                .foregroundColor(Color.black)
                                .font(.system(size:50))
                            
                            Button {
                                
                            } label: {
                                Image(systemName: "mountain.2.circle")
                                    .foregroundColor(Color.black)
                                    .font(.system(size:50))
                                
                                Button {
                                    
                                } label: {
                                    Image(systemName: "car.circle")
                                        .foregroundColor(Color.black)
                                        .font(.system(size:50))
                                    
                                }
                            }
                        }
                    }
                    
                }
                
                Text("Popular Ofer")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .padding(.leading, -180.0)
                ScrollView(.horizontal) {
                    HStack(spacing:0) {
                        ForEach(Places,id:\.self) {Places in
                            Image("\(Places)")
                                .frame(width: 190, height: 190)
                                .cornerRadius(20)
                        }
                    }
                }
                Text("Hotel Near You")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .padding(.leading, -180.0)
                ScrollView(.horizontal) {
                    HStack(spacing:0) {
                        ForEach(Hotels,id:\.self) {Hotels in
                            Image("\(Hotels)")
                                .frame(width: 190, height: 190)
                                .cornerRadius(20)
                        }
                    }
                }
                
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    
               
             
                    TabView {
                        Text("HOME TAB")
                            .tabItem {
                                Image(systemName: "house.fill")
                                Text("HOME")
                            }
                            .tag(0)
                        
                        Text("BROWSE TAB")
                            .tabItem {
                                Image(systemName: "globe")
                                Text("Browse")
                            }
                            .tag(1)
                        Text("PROFILE TAB")
                            .tabItem {
                                Image(systemName: "person.fill")
                                Text("Profile")
                            }
                            .tag(2)
                    }
                    .accentColor(.black)
                }
            }
        }
    }

        struct secondV_Previews: PreviewProvider {
            static var previews: some View {
                secondV()
            }
        }
    
