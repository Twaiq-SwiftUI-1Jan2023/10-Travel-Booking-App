//
//  DropDownBtn.swift
//  GoTour
//
//  Created by Amer Alyusuf on 22/01/2023.
//

import SwiftUI

struct DropDownBtn: View {
    @Binding var selecteCountry: Country
    @Binding var areaCode: String
    var country: Country
    
    var body: some View {
        Button {
            selecteCountry = country
            areaCode = "+\(selecteCountry.num)"
        } label: {
            Text(country.flag)
                .font(.body)
        }
    }
}
