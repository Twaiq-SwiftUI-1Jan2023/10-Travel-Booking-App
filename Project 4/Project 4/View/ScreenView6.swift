//
//  ScreenView6.swift
//  Project 4
//
//  Created by RMP on 29/06/1444 AH.
//

import SwiftUI

struct ScreenView6: View {
    
    
    @State var customView = ""
    
    var hotelNames = [
        
        "Crowne Plaza",
        "Emerald Bay Inn",
        "Hotel Bliss",
        "University Inn",
        "The New View",
        "Sunset Lodge",
        "Hotel Elite",
        "Lake Place Inn",
        "Beacon Motel",
        "Comfort B&B",
        "The Fresco Hotel",

    ]
    
    var body: some View {
        
        ZStack {
            
            Color.orange.opacity(0.35).ignoresSafeArea()
            
            VStack {
                
                HStack(spacing: 100) {
                    
                    Button {
                        
                        
                    } label: {
                        
                        Image(systemName: "chevron.left.square.fill").resizable().frame(width: 30, height: 30, alignment: .leading).foregroundColor(.primary)
                        
                    }
                    
                    Text("My Trips").font(.title3).fontWeight(.semibold)
                    
                }.padding(.trailing, 130)
                
            }.padding(.bottom, 650)
            
            VStack {
                
                RoundedRectangle(cornerRadius: 0, style: .continuous).frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height - 170, alignment: .center).foregroundColor(.white).opacity(0.55).overlay(alignment: .center) {
                    
                    
                    VStack {
                        
                        Picker("", selection: $customView) {
                            
                            Text("Upcoming").tag("1")
                            Text("Completed").tag("2")
                            Text("Cancelled").tag("3")
                            
                            
                        }.pickerStyle(SegmentedPickerStyle()).frame(width: UIScreen.main.bounds.width - 30).padding()
                        
                        
                        ScrollView(.vertical, showsIndicators: false) {
                            
                            VStack(spacing: -15) {
                                
                                ForEach(1..<12) { number in
                                    
                                    
                                    Button {
                                        
                                        
                                    } label: {
                                        
                                        HStack {
                                            
                                            Image("hotel-\(number)").resizable().frame(width: 120, height: 120, alignment: .center).aspectRatio(contentMode: .fit).font(.headline).fontWeight(.semibold).foregroundColor(.white).background(Color.black).cornerRadius(23).shadow(radius: 7).padding()
                                            
                                            VStack(spacing: 5) {
                                                
                                                Text(hotelNames.randomElement()!).font(.headline).fontWeight(.semibold)
                                                
                                                Text("Sat, Aug 21  Tue, Aug 24").font(.subheadline).fontWeight(.regular).foregroundColor(.gray)//.padding(.top, 10)
                                                
                                                Button {
                                                    
                                                    
                                                } label: {
                                                    
                                                    RoundedRectangle(cornerRadius: 10.0).frame(width: UIScreen.main.bounds.width - 250, height: 25, alignment: .center).foregroundColor(.primary).overlay {
                                                        
                                                        Text("Write review").font(.subheadline).fontWeight(.semibold).foregroundColor(.white).padding()
                                                        
                                                    }
                                                    
                                                }
                                                
                                            }.padding(.trailing, 40)
                                            
                                        }
                                        
                                        
                                    }
                                    
                                    
                                    
                                }
                                
                            }
                            
                        }//.padding(.trailing, 120)
                        
                    }
                    
                    
                }.padding(.top, 40)
                
            }
            
        }
        
    }
}
