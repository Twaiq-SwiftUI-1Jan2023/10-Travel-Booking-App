//
//  DiscoverHeadMenu.swift
//  travel Booking app
//
//  Created by Abdullah Aloufi on 28/06/1444 AH.
//

import SwiftUI

struct DiscoverHeadMenu: View {
    var body: some View {
        HStack {
            
            VStack{
                Image(systemName: "airplane")
                    .padding()
                    .background(.green)
                    .cornerRadius(90)
                Text("Flights")
                    .font(.caption)
                    
            }
            Spacer()
            VStack{
                Image(systemName: "building")
                    .padding()
                    .background(.green)
                    .cornerRadius(90)
                Text("Hotels")
                    .font(.caption)
                    
            }
            Spacer()
            VStack{
                Image(systemName: "figure.yoga")
                    .padding()
                    .background(.green)
                    .cornerRadius(90)
                Text("Activities")
                    .font(.caption)
                    
            }
            Spacer()
            VStack{
                Image(systemName: "car")
                    .padding()
                    .background(.green)
                    .cornerRadius(90)
                Text("Trans")
                    .font(.caption)
                    
            }
        }
    }
}

struct DiscoverHeadMenu_Previews: PreviewProvider {
    static var previews: some View {
        DiscoverHeadMenu()
    }
}
