//
//  TravelDetails.swift
//  travel Booking app
//
//  Created by Abdullah Aloufi on 28/06/1444 AH.
//

import SwiftUI

struct TravelDetails: View {
    var body: some View {
        ZStack{
            Image("image2")
                .resizable()
                .ignoresSafeArea()
            VStack {
                List {
                    ImageSlider()
                        .frame(height: 300)
                        .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                    //                    .padding()
                }
                .frame(height: 350)
                .cornerRadius(16)
                .padding()
                
                
                LazyGridDetails()
                
                HStack{
                    Text("150")
                        .font(.largeTitle)
                        .foregroundColor(.green)
                    Text("/ per night")
                    Spacer()
                    Button{
                        
                    }label: {
                        Text("Book Now")
                        
                            .foregroundColor(.white)
                            .padding()
                    }.background(.green)
                        .cornerRadius(16)
                    
                }
                .padding()

                
            }.background()
            
            
            
        }
    }
}

struct TravelDetails_Previews: PreviewProvider {
    static var previews: some View {
        TravelDetails()
    }
}
