//
//  Countries.swift
//  GoTour
//
//  Created by Amer Alyusuf on 22/01/2023.
//

import Foundation

struct Country: Identifiable {
    var id = UUID()
    var flag: String
    var num: String
    
    static var countries: [Country] = [
        Country(flag: "🇸🇦", num: "966"),
        Country(flag: "🇿🇦", num: "302"),
        Country(flag: "🇧🇷", num: "201")
    ]
}
