//
//  HomeModel.swift
//  Travel_Booking_App
//
//  Created by Raneem AlRashoud on 29/06/1444 AH.
//

import Foundation

struct firstHomeModel: Identifiable {
    let id = UUID()
    let typeImage: String
    let type: String
    let distance: String
    let time: String
}

struct secondHomeModel {
    let id = UUID()
    let tempretureImage: String
    let district: String
    let distance: String
}

