//
//  ScreenView3.swift
//  Project 4
//
//  Created by RMP on 27/06/1444 AH.
//

import SwiftUI

struct ScreenView3: View {
    
    init() {
        
        UITabBar.appearance().backgroundColor = UIColor(red: 255 / 255, green: 230 / 255, blue: 167 / 255, alpha: 0.75)
        
    }
    
    var body: some View {
        
        TabView {
            
            
            ZStack {
                
                
                Image("background1").resizable(capInsets: .init(top: 0, leading: 0, bottom: 0, trailing: 0), resizingMode: .stretch).aspectRatio(contentMode: .fill).ignoresSafeArea(.container, edges: .top)
                
                
                //RoundedRectangle(cornerRadius: 0).frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height - 250, alignment: .center).foregroundColor(Color(red: 255 / 255, green: 230 / 255, blue: 167 / 255)).padding(.top, 123).cornerRadius(80, corners: .topLeft)
                
                
                
                
                
                RoundedRectangle(cornerRadius: 0).frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height - 250).cornerRadius(50, corners: [.topLeft, .topRight]).padding(.top, 123).foregroundColor(Color(red: 255 / 255, green: 230 / 255, blue: 167 / 255)).overlay(alignment: .center) {
                    
                    
                    VStack(spacing: 25) {
                        
                        HStack(spacing: 33) {
                            
                            
                            VStack {
                                
                                Button {
                                    
                                    
                                } label: {
                                    
                                    Image(systemName: "figure.walk.diamond.fill").resizable().frame(width: 40, height: 40, alignment: .center).padding(9).background(Color(red: 23 / 255, green: 255 / 255, blue: 238 / 255, opacity: 1)).foregroundColor(.white.opacity(0.80)).cornerRadius(40).shadow(radius: 10)
                                    
                                    
                                }
                                
                                Text("Trips").font(.callout).fontWeight(.semibold).foregroundColor(.primary)
                                
                            }
                            
                            VStack {
                                
                                Button {
                                    
                                    
                                } label: {
                                    
                                    Image(systemName: "bag.circle").resizable().frame(width: 40, height: 40, alignment: .center).padding(9).background(Color(red: 23 / 255, green: 255 / 255, blue: 20 / 255, opacity: 1)).foregroundColor(.black.opacity(0.35)).cornerRadius(40).shadow(radius: 10)
                                    
                                    
                                }
                                
                                Text("Hotels").font(.callout).fontWeight(.semibold).foregroundColor(.primary)
                                
                            }
                            
                            VStack {
                                
                                Button {
                                    
                                    
                                } label: {
                                    
                                    Image(systemName: "airplane.departure").resizable().frame(width: 40, height: 40, alignment: .center).padding(9).background(Color(red: 23 / 255, green: 80 / 255, blue: 238 / 255, opacity: 1)).foregroundColor(.white.opacity(0.80)).cornerRadius(40).shadow(radius: 10)
                                    
                                }
                                
                                Text("Flights").font(.callout).fontWeight(.semibold).foregroundColor(.primary)
                                
                            }
                            
                            VStack {
                                
                                Button {
                                    
                                    
                                } label: {
                                    
                                    Image(systemName: "sunrise.fill").resizable().frame(width: 40, height: 40, alignment: .center).padding(9).background(Color(red: 34 / 255, green: 200 / 255, blue: 19 / 255, opacity: 1)).foregroundColor(.white.opacity(0.80)).cornerRadius(40).shadow(radius: 10)
                                    
                                    
                                }
                                
                                
                                Text("Offers").font(.callout).fontWeight(.semibold).foregroundColor(.primary)
                                
                                
                            }
                            
                            
                        }.padding(.top, 140)
                        
                        HStack {
                            
                            VStack(spacing: -2) {
                                
                                Text("Popular Offer").font(.headline).fontWeight(.bold).multilineTextAlignment(.leading).padding(.trailing, 220)
                                
                                ScrollView(.horizontal, showsIndicators: false) {
                                    
                                    HStack(spacing: -15) {
                                        
                                        ForEach(1..<11) { number in
                                            
                                            
                                            Button {
                                                
                                                
                                            } label: {
                                                
                                                Image("\(number)").resizable().frame(width: 140, height: 140, alignment: .center).aspectRatio(contentMode: .fill).font(.headline).fontWeight(.semibold).foregroundColor(.white).background(Color.black).cornerRadius(23).shadow(radius: 7).padding()
                                                
                                                
                                            }
                                            
                                            
                                            
                                        }
                                        
                                    }
                                    
                                }
                                
                            }
                            
                            
                        }
                        
                        HStack {
                            
                            VStack(spacing: -2) {
                                
                                Text("Hotel Near You").font(.headline).fontWeight(.bold).multilineTextAlignment(.leading).padding(.trailing, 215)
                                
                                ScrollView(.horizontal, showsIndicators: false) {
                                    
                                    HStack(spacing: -15) {
                                        
                                        ForEach(1..<12) { number in
                                            
                                            
                                            Button {
                                                
                                                
                                            } label: {
                                                
                                                Image("hotel-\(number)").resizable().frame(width: 250, height: 150, alignment: .center).aspectRatio(contentMode: .fit).font(.headline).fontWeight(.semibold).foregroundColor(.white).background(Color.black).cornerRadius(23).shadow(radius: 7).padding()
                                                
                                                
                                            }
                                            
                                            
                                            
                                        }
                                        
                                    }
                                    
                                }
                                
                            }//.padding(.bottom, 10)
                            
                            
                        }
                        
                    }
                    
                }
                
                
                //RoundedRectangle().frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height - 250, alignment: .center).foregroundColor(Color(red: 255 / 255, green: 230 / 255, blue: 167 / 255)).padding(.top, 123).cornerRadius(20, corners: [.topLeft, .topRight])
                
                
                VStack {
                    
                    HStack(spacing: 250) {
                        
                        Button {
                            
                            
                        } label: {
                            
                            Image(systemName: "line.horizontal.3.circle.fill").font(.largeTitle).background(Color.white.opacity(0.23)).cornerRadius(30).foregroundColor(.white).shadow(color: .white, radius: 10, x: 0, y: 0)
                            
                        }
                        
                        Button {
                            
                            print("minY: \(UIScreen.main.bounds.minY)")
                            print("maxY: \(UIScreen.main.bounds.maxY)")
                            print("midY: \(UIScreen.main.bounds.midY)")
                            
                        } label: {
                            
                            Image(systemName: "person.crop.circle.fill").font(.largeTitle).background(Color.white.opacity(0.23)).cornerRadius(30).foregroundColor(.white).shadow(color: .white, radius: 10, x: 0, y: 0)
                            
                        }
                        
                    }.offset(x: UIScreen.main.bounds.minX, y: UIScreen.main.bounds.minY - UIScreen.main.bounds.maxX + 60)
                    
                }
                
                
                
            }.tabItem {
                
                Label("Home", systemImage: "house.fill")
                
            }
            
            VStack {
                
                Color.blue
                
                
            }.tabItem {
                
                Label("Search", systemImage: "magnifyingglass")
                
            }
            
            VStack {
                
                ScreenView6()
                
            }.tabItem {
                
                Label("Tap", systemImage: "square.3.layers.3d.top.filled")
                
            }
            
            VStack {
                
                Color.yellow
                
                
            }.tabItem {
                
                Label("Others", systemImage: "circle.dashed.inset.filled")
                
            }
            
            VStack {
                
                Color.orange
                
            }.tabItem {
                
                Label("Profile", systemImage: "person.fill")
                
            }
            
        }.tint(.black)
        
    }
}

struct ScreenView3_Previews: PreviewProvider {
    
    static var previews: some View {
        ScreenView3()
    }
}




