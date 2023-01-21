//
//  Discover.swift
//  travel Booking app
//
//  Created by Abdullah Aloufi on 28/06/1444 AH.
//

import SwiftUI

struct Discover: View {
    var body: some View {
        ZStack{
            Image("background")
                .frame(width: 300)
                .ignoresSafeArea()
                
            VStack{
                
                DiscoverHeadMenu()
                    .padding()
                HStack{
                    Text("Pupolar Offer")
                        .font(.title2)
                        .padding()
                    Spacer()
                }
                DiscoverScroll()
                    .padding()
                
                HStack{
                    Text("Pupolar Offer")
                        .font(.title2)
                        .padding()
                    Spacer()
                }
                
                DiscoverScrollStack()
            }.frame(height: 700)
            .background()
            .cornerRadius(16)
            
            
            
                
            
        }

    }
}

struct Discover_Previews: PreviewProvider {
    static var previews: some View {
        Discover()
    }
}
