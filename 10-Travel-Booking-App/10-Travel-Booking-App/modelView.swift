//
//  modelView.swift
//  10-Travel-Booking-App
//
//  Created by سرّاء. on 28/06/1444 AH.
//

import Foundation

struct PlacesCard {
    let id = UUID()
    let image : String
    let text : String
    let disc : String
    
    
    static var pcard = [
        PlacesCard(image: "place3", text: "Burj Khalifa ", disc: "Get a free lunch"),
        PlacesCard(image: "place4", text: "Beach trip", disc: "Get a free lunch"),
        PlacesCard(image: "p1", text: "Amaizing ", disc: "Get a free lunch "),
        PlacesCard(image: "p4", text: "Beach trip", disc: "Get a free lunch ")
       ]
}


struct HotelCard {
    let id = UUID()
    let image : String
    let text1 : String
    let text2 : String

    
    static var Hcard = [
        HotelCard(image: "hotelroom1", text1: "First Room", text2: "$1200"),
        HotelCard(image: "hotelroom2", text1: "Second Room", text2: "$800"),
        HotelCard(image: "hotelroom3", text1: "Third Room", text2: "$4000"),
        HotelCard(image: "hotelroom4", text1: "Fourth Room", text2: "$3800"),
       ]
}

struct TripsCard{
    let id = UUID()
    let image : String
    let title : String

    
    
    
    static var Tcard = [
    TripsCard(image: "hotelroom3", title: "Firs room"),
    TripsCard(image: "hotelroom2", title: "Second room"),
    TripsCard(image: "hotelroom1", title: "Third room"),
    TripsCard(image: "hotelroom4", title: "Fourth room"),
    TripsCard(image: "hotelroom3", title: "Fifth room"),
    TripsCard(image: "hotelroom2", title: "Sexth room"),
    ]
}


