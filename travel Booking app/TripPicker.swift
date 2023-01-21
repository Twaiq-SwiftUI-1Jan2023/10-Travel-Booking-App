//
//  TripPicker.swift
//  travel Booking app
//
//  Created by Abdullah Aloufi on 28/06/1444 AH.
//

import SwiftUI

struct TripPicker: View {
    var body: some View {
        HStack{
            
            Image("image2")
                .resizable()
                .frame(width: 100 , height: 100)
                .padding()
                Spacer()
            VStack{
                Text("Trip 1")
                    .font(.largeTitle)
                HStack{
                    Image(systemName: "star.fill")
                    Spacer()
                    Text("Good")
                }
                .padding()
                NavigationLink(destination: ReviewPage().navigationBarBackButtonHidden(true)) {
                    Button{

                    }label: {
                        Text("Rate your trip")
                            .foregroundColor(.red)
                    }
                    .padding()
                    .background(.green)
                    .cornerRadius(16)
                        
                }.font(.caption)
                
            }
            Spacer()
        }
    }
}

struct TripPicker_Previews: PreviewProvider {
    static var previews: some View {
        TripPicker()
    }
}
