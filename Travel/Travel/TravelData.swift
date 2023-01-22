//
//  TravelData.swift
//  Travel
//
//  Created by Batool on 21/1/2023.
//

import Foundation

struct Hotels {
    let id = UUID()
    let name : String
    let location : String
    let price : String
    let img : String
    let review : String
    
    
    static var hotelList = [
        Hotels(name: "Hilton", location: "Riyadh", price: "1200 SR/night", img: "hilton", review: "★★★★★"),
        Hotels(name: "Holiday Inn", location: "Khobar", price: "1050 SR/night", img: "holiday", review: "★★★★☆"),
        Hotels(name: "Radisson Blu", location: "Jeddah", price: "1100 SR/night", img: "blu", review: "★★★★☆"),
        Hotels(name: "Ritz Carlton", location: "Riyadh", price: "1500 SR/night", img: "ritz", review: "★★★★★"),
        Hotels(name: "Sheraton", location: "Dammam", price: "950 SR/night", img: "she", review: "★★★★☆")
    ]
    
}


struct Offers {
    let id = UUID()
    let name : String
    let icon : String
    let desc : String
    
    
    static var hotelOffer = [
        Offers(name: "Birthday", icon: "birthday.cake", desc: "Celebrate your \n birthday with us!"),
        Offers(name: "Hire Car", icon: "car", desc: "Contact us to \n arrange you a car!"),
        Offers(name: "Laundry", icon: "tshirt", desc: "Let us take care \n of your laundry"),
        Offers(name: "Swimming Pool", icon: "figure.pool.swim", desc: "Try our Swimming \n Pool for incredible \n price!")
    ]
    
}
