//
//  ScreenFive.swift
//  Travel
//
//  Created by Batool on 21/1/2023.
//

import SwiftUI

struct ScreenFive: View {
    static let Sky = Color("sky")
    static let Orange1 = Color("ornge")
    static let Sys = Color("sys")
    var h2 = Hotels.hotelList
    var body: some View {
        VStack {
            ScreenFive.Sky
                .ignoresSafeArea()
                .frame(width: 400, height: 30)
            HStack {
                Button {
                    
                } label: {
                    Image(systemName: "arrow.left")
                }.foregroundColor(Color.white)
                .font(.system(size: 20))
                .offset(x: -110, y: -37)
                
                
                Text ("My Trips")
                    .fontWeight(.semibold)
                .foregroundColor(Color.white)
                    .offset(x: -18, y: -37)
                
            }
            
            HStack {
                Button ("Upcoming") {
                }.frame(width: 110, height: 50, alignment: .center).background(ScreenFive.Sys).foregroundColor(ScreenFive.Sky).bold().offset(x: 7.5, y: 0)
                Button ("Completed") {
                }.frame(width: 110, height: 50, alignment: .center).background(ScreenFive.Sky).foregroundColor(Color.white).bold()
                Button ("Cancelled") {
                }.frame(width: 110, height: 50, alignment: .center).background(ScreenFive.Sys).foregroundColor(ScreenFive.Sky).bold().offset(x: -7.5, y: 0)
            }.offset(x: 0, y: -20)
            
            ScrollView (.vertical) {
                VStack {
                    ForEach(h2, id: \.id) { i in
                        
                        ZStack {
                            RoundedRectangle(cornerRadius: 20)
                                .frame(width: 340, height: 150, alignment: .center)
                                .foregroundColor(ScreenFive.Sys)
                            
                            HStack {
                                Image(i.img)
                                    .resizable()
                                    .cornerRadius(10)
                                    .frame(width: 170, height: 130)
                                
                                VStack {
                                    Text (i.name)
                                        .font(.title3)
                                        .fontWeight(.semibold)
                                        .multilineTextAlignment(.center)
                                        .offset(x: 0, y: -20)
                                    HStack {
                                        
                                        Text ("Check-In \n Sat, Aug 21")
                                            .font(.caption)
                                            .fontWeight(.medium)
                                            .multilineTextAlignment(.leading)
                                        
                                        Text ("Check-Out \n Tue, Aug 24")
                                            .font(.caption)
                                            .fontWeight(.medium)
                                            .multilineTextAlignment(.trailing)
                                    }
                                }
                            }
                        }
                    }
                }
            }
            ZStack {
                Rectangle()
                    .foregroundColor(ScreenFive.Sys)
                    .frame(width: 400, height: 110)
                    .offset(x: 0, y: 50)
                
                HStack (spacing : 23){
                    VStack {
                        Image(systemName: "house.fill")
                            .font(.system(size: 30))
                            .foregroundColor(Color.gray)
                            .offset(x: -30, y: 40)
                        
                        Text ("Home")
                            .font(.caption)
                            .fontWeight(.medium)
                            .foregroundColor(Color.gray)
                            .offset(x: -30, y: 43)
                    }
                    
                    VStack {
                        Image(systemName: "magnifyingglass")
                            .font(.system(size: 30))
                            .foregroundColor(Color.gray)
                            .offset(x: -20, y: 40)
                        
                        Text ("Search")
                            .font(.caption)
                            .fontWeight(.medium)
                            .foregroundColor(Color.gray)
                            .offset(x: -20, y: 43)
                    }
                    
                    VStack {
                        Image(systemName: "bag")
                            .font(.system(size: 30))
                            .foregroundColor(ScreenFive.Sky)
                            .offset(x: -5, y: 40)
                        
                        Text ("Trip")
                            .font(.caption)
                            .fontWeight(.medium)
                            .foregroundColor(ScreenFive.Sky)
                            .offset(x: -5, y: 43)
                    }
                    
                    VStack {
                        Image(systemName: "dollarsign.circle")
                            .font(.system(size: 30))
                            .foregroundColor(Color.gray)
                            .offset(x: 10, y: 42)
                        
                        Text ("Offers")
                            .font(.caption)
                            .fontWeight(.medium)
                            .foregroundColor(Color.gray)
                            .offset(x: 10, y: 45)
                    }
                    
                    VStack {
                        Image(systemName: "person.crop.circle")
                            .font(.system(size: 30))
                            .foregroundColor(Color.gray)
                            .offset(x: 25, y: 42)
                        
                        Text ("Profile")
                            .font(.caption)
                            .fontWeight(.medium)
                            .foregroundColor(Color.gray)
                            .offset(x: 25, y: 45)
                    }
                }
            }
        }
    }
}

struct ScreenFive_Previews: PreviewProvider {
    static var previews: some View {
        ScreenFive()
    }
}
