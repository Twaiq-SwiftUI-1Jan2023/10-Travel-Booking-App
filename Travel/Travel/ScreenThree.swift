//
//  ScreenThree.swift
//  Travel
//
//  Created by Batool on 21/1/2023.
//

import SwiftUI

struct ScreenThree: View {
    var h1 = Offers.hotelOffer
    var h2 = Hotels.hotelList
    static let Sys = Color("sys")
    static let Sky = Color("sky")
    var body: some View {
        VStack {
            ZStack {
                
                Image ("adv")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 450, height: 300)
                    .offset(x: 0, y: 10)
                
                VStack {
                    Text ("Let's Explore \n The World!")
                        .font(.title)
                        .fontWeight(.semibold)
                        .foregroundColor(Color.black)
                        .multilineTextAlignment(.trailing)
                        .offset(x: 80, y: 30)
                    
                    HStack {
                        
                        Text ("You're in Riyadh")
                            .font(.caption)
                            .fontWeight(.medium)
                            .foregroundColor(Color.black)
                            .multilineTextAlignment(.trailing)
                            .offset(x: 105, y: 35)
                        
                        Image(systemName: "location.fill")
                            .font(.system(size: 13))
                            .offset(x: 105, y: 35)
                    }
                }
            }
            ZStack {
                RoundedRectangle(cornerRadius: 50)
                    .foregroundColor(ScreenThree.Sys)
                    .frame(width: 400, height: 580)
                    .offset(x: 0, y: -30)
                
                VStack {
                    HStack (spacing : 30) {
                        VStack {
                            Image(systemName: "figure.walk.circle.fill")
                                .font(.system(size: 55))
                                .foregroundColor(Color.brown)
                            
                            Text ("Trips")
                                .foregroundColor(Color.gray)
                        }
                        
                        VStack {
                            Image(systemName: "building.2.crop.circle.fill")
                                .font(.system(size: 55))
                                .foregroundColor(Color.yellow)
                            
                            Text ("Hotels")
                                .foregroundColor(Color.gray)
                        }
                        
                        VStack {
                            Image(systemName: "airplane.circle.fill")
                                .font(.system(size: 55))
                                .foregroundColor(Color.cyan)
                            
                            Text ("Flights")
                                .foregroundColor(Color.gray)
                        }
                        
                        VStack {
                            Image(systemName: "dollarsign.circle.fill")
                                .font(.system(size: 55))
                                .foregroundColor(Color.green)
                            
                            Text ("Offers")
                                .foregroundColor(Color.gray)
                        }
                    }.padding(.bottom)
                        .offset(x: 0, y: -15)
                    
                    Text ("Popular Offer")
                        .font(.system(size: 20))
                        .fontWeight(.semibold)
                        .offset(x: -115, y: -25)
                    
                    ScrollView (.horizontal) {
                        HStack {
                            ForEach(h1, id: \.id) { i in
                                
                                ZStack {
                                    RoundedRectangle(cornerRadius: 30)
                                        .frame(width: 160, height: 160, alignment: .center)
                                        .foregroundColor(Color.white)
                                    
                                    VStack {
                                        Image(systemName: i.icon)
                                            .font(.system(size: 35))
                                            .padding(3)
                                        
                                        Text (i.name)
                                            .fontWeight(.semibold)
                                            .multilineTextAlignment(.center)
                                            .padding(1)
                                        
                                        Text (i.desc)
                                            .fontWeight(.light)
                                            .multilineTextAlignment(.center)
                                    }
                                }
                            }
                        }
                    }.padding()
                    .offset(x: 0, y: -40)
                    
                    Text ("Hotels Near You")
                        .font(.system(size: 20))
                        .fontWeight(.semibold)
                        .offset(x: -105, y: -45)
                    
                    ScrollView (.horizontal) {
                        HStack {
                            ForEach(h2, id: \.id) { i in
                                
                                ZStack {
                                    RoundedRectangle(cornerRadius: 30)
                                        .frame(width: 160, height: 160, alignment: .center)
                                        .foregroundColor(Color.white)
                                    
                                    VStack {
                                        Image(i.img)
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 120, height: 80, alignment: .center)
                                        
                                        Text (i.name)
                                            .fontWeight(.semibold)
                                            .multilineTextAlignment(.center)
                                            .padding(1)
                                        
                                        HStack {
                                            Text (i.review)
                                                .font(.caption)
                                                .fontWeight(.light)
                                            .multilineTextAlignment(.leading)
                                            
                                            Text (i.price)
                                                .font(.caption)
                                                .fontWeight(.light)
                                            .multilineTextAlignment(.trailing)
                                        }
                                    }
                                }
                            }
                        }
                    }.padding()
                        .offset(x: 0, y: -60)
                }
            }
            
            ZStack {
                Rectangle()
                    .foregroundColor(Color.white)
                    .frame(width: 400, height: 110)
                    .offset(x: 0, y: -70)
                
                HStack (spacing : 23){
                    VStack {
                        Image(systemName: "house.fill")
                            .font(.system(size: 30))
                            .foregroundColor(ScreenOne.Sky)
                            .offset(x: -30, y: -85)
                        
                        Text ("Home")
                            .font(.caption)
                            .fontWeight(.medium)
                            .foregroundColor(ScreenOne.Sky)
                            .offset(x: -30, y: -83)
                    }
                    
                    VStack {
                        Image(systemName: "magnifyingglass")
                            .font(.system(size: 30))
                            .foregroundColor(Color.gray)
                            .offset(x: -20, y: -85)
                        
                        Text ("Search")
                            .font(.caption)
                            .fontWeight(.medium)
                            .foregroundColor(Color.gray)
                            .offset(x: -20, y: -83)
                    }
                    
                    VStack {
                        Image(systemName: "bag")
                            .font(.system(size: 30))
                            .foregroundColor(Color.gray)
                            .offset(x: -5, y: -85)
                        
                        Text ("Trip")
                            .font(.caption)
                            .fontWeight(.medium)
                            .foregroundColor(Color.gray)
                            .offset(x: -5, y: -83)
                    }
                    
                    VStack {
                        Image(systemName: "dollarsign.circle")
                            .font(.system(size: 30))
                            .foregroundColor(Color.gray)
                            .offset(x: 10, y: -85)
                        
                        Text ("Offers")
                            .font(.caption)
                            .fontWeight(.medium)
                            .foregroundColor(Color.gray)
                            .offset(x: 10, y: -83)
                    }
                    
                    VStack {
                        Image(systemName: "person.crop.circle")
                            .font(.system(size: 30))
                            .foregroundColor(Color.gray)
                            .offset(x: 25, y: -85)
                        
                        Text ("Profile")
                            .font(.caption)
                            .fontWeight(.medium)
                            .foregroundColor(Color.gray)
                            .offset(x: 25, y: -83)
                    }
                }
            }
        }
    }
}

struct ScreenThree_Previews: PreviewProvider {
    static var previews: some View {
        ScreenThree()
    }
}
