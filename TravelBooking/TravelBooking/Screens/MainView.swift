//
//  MainView.swift
//  TravelBooking
//
//  Created by Abdulkarim Koshak on 1/22/23.
//

import SwiftUI

struct MainView: View {
    
    let offers: [PopoularOfferModel] = [
        .init(id: 0, title: "New Year Special", description: "Get a free lunch using Coupon 'GoTour'.", img: "umluj-img"),
        .init(id: 1, title: "Eid-ul-Fitr Special", description: "50% discount on Maldives International Flights.", img: "maldives-img"),
        .init(id: 2, title: "Black Friday Special", description: "Up to 25% off on local transportation.", img: "dubai-img"),
        .init(id: 3, title: "Ramadan Special", description: "Up to 75% off on local hotels.", img: "madina-img")]
    
    let hotels: [HotelModel] = [
        .init(id: 0, title: "Pan Pacific Hotel", description: "⭐️⭐️⭐️⭐️⭐️", price: 1200, img: "hotel-1-img"),
        .init(id: 1, title: "Prestige Proga Inn", description: "⭐️⭐️⭐️⭐️", price: 1200, img: "hotel-2-img"),
        .init(id: 2, title: "Hilton Hotels", description: "⭐️⭐️⭐️⭐️⭐️", price: 1400, img: "hotel-3-img")]
    
    var body: some View {
        ZStack {
            Image("header")
                .resizable()
                .scaledToFit()
                .frame(width: 400, height: 400)
                .offset(x: 0, y: -310)
            
            Image(systemName: "text.justify")
                .foregroundColor(.gray)
                .font(.system(size: 25))
                .padding(.leading, 30)
                .offset(x: -175, y: -395)
            
            VStack {
                HStack {
                    Text("Let's")
                        .font(.largeTitle)
                        .foregroundColor(Color.white)
                        .fontDesign(.serif)
                        .fontWeight(.semibold)
                        .offset(x: -50, y: -265)
                    
                    Text("Explore")
                        .font(.largeTitle)
                        .foregroundColor(Color.white)
                        .fontDesign(.serif)
                        .fontWeight(.semibold)
                        .offset(x: 10, y: -265)
                }
                
                HStack(spacing: 10) {
                    Text("The")
                        .font(.largeTitle)
                        .foregroundColor(Color.white)
                        .fontDesign(.serif)
                        .fontWeight(.semibold)
                    
                    Text("World!")
                        .font(.largeTitle)
                        .foregroundColor(Color.white)
                        .fontDesign(.serif)
                        .fontWeight(.semibold)
                }
                .offset(x: -65, y: -250)
                
                HStack {
                    Image(systemName: "mappin")
                        .foregroundColor(.white)
                        .font(.system(size: 20))
                    
                    Text("You're in Riyadh, KSA")
                        .foregroundColor(.white)
                        .font(Font.custom("Poppins-Light", size: 17))
                }
                .offset(x: -75, y: -240)
            }
            
            RoundedRectangle(cornerRadius: 16)
                .foregroundColor(CustomColor.menu)
                .frame(width: 400, height: 575)
                .offset(x: 0, y: 110)
                .overlay {
                    HStack(spacing: 40) {
                        VStack {
                            Image("trips-icon")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 60, height: 60)
                            
                            Text("Trips")
                                .font(Font.custom("Poppins-Medium", size: 15))
                                .foregroundColor(.gray)
                        }
                        
                        VStack {
                            Image("hotels-icon")
                                .resizable()
                                .scaledToFit()
                            .frame(width: 60, height: 60)
                            
                            Text("Hotels")
                                .font(Font.custom("Poppins-Medium", size: 15))
                                .foregroundColor(.gray)
                        }
                        
                        VStack {
                            Image("flights-icon")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 60, height: 60)
                            
                            Text("Flights")
                                .font(Font.custom("Poppins-Medium", size: 15))
                                .foregroundColor(.gray)
                        }
                        
                        
                        VStack {
                            Image("offers-icon")
                                .resizable()
                                .scaledToFit()
                            .frame(width: 60, height: 60)
                            
                            Text("Offers")
                                .font(Font.custom("Poppins-Medium", size: 15))
                                .foregroundColor(.gray)
                        }
                    }
                    .offset(x: 0, y: -110)
                    
                    VStack {
                        Text("Popular Offer")
                            .font(Font.custom("Poppins-Medium", size: 20))
                            .offset(x: -110, y: 75)
                        
                        ScrollView(.horizontal) {
                            HStack(spacing: 25) {
                                ForEach(offers, id: \.id) { offer in
                                    RoundedRectangle(cornerRadius: 16)
                                        .foregroundColor(.white)
                                        .frame(width: 175, height: 175)
                                        .overlay {
                                            Image(offer.img)
                                                .resizable()
                                                .frame(width: 175, height: 175)
                                            
                                            Text(offer.title)
                                                .font(Font.custom("Poppins-SemiBold", size: 15))
                                                .foregroundColor(Color.orange)
                                                .offset(x: -10, y: 30)
                                            
                                            Text(offer.description)
                                                .font(.footnote)
                                                .fontWeight(.medium)
                                                .foregroundColor(Color.white)
                                                .multilineTextAlignment(.leading)
                                                .offset(x: 0, y: 60)
                                                
                                        }
                                        .cornerRadius(16)
                                        
                                }
                            }
                        }
                        .offset(x: 0, y: 75)
                        .padding(.horizontal, 30)
                        
                        Text("Hotels Near You")
                            .font(Font.custom("Poppins-Medium", size: 20))
                            .offset(x: -100, y: 80)
                        
                        ScrollView(.horizontal) {
                            HStack(spacing: 20) {
                                ForEach(hotels, id: \.id) { hotel in
                                    RoundedRectangle(cornerRadius: 24)
                                        .foregroundColor(.white)
                                        .frame(width: 275, height: 175)
                                        .overlay {
                                            Image(hotel.img)
                                                .resizable()
                                                .frame(width: 275, height: 175)
                                            
                                            Text(hotel.title)
                                                .font(Font.custom("Poppins-SemiBold", size: 24))
                                                .foregroundColor(.white)
                                                
                                            Text(hotel.description)
                                                .font(.footnote)
                                                .fontWeight(.medium)
                                                .foregroundColor(Color.white)
                                                .multilineTextAlignment(.leading)
                                                .offset(x: 0, y: 35)
                                                
                                        }
                                        .cornerRadius(16)
                                }
                            }
                        }
                        .offset(x: 0, y: 75)
                        .padding(.horizontal, 30)
                        
                    }
                    .offset(x: 0, y: 100)
                }
            
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
