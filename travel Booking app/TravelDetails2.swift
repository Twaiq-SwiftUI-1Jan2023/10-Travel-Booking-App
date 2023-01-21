//
//  TravelDetails2.swift
//  travel Booking app
//
//  Created by Abdullah Aloufi on 28/06/1444 AH.
//

import SwiftUI

struct TravelDetails2: View {
    @State var name : String = ""
    var body: some View {
        ZStack{
            Color.orange
                .ignoresSafeArea()
            VStack{
                ImageSliderView()
                    .background()
                    .cornerRadius(16)
                    .padding()
                Spacer()
                VStack{
                    HStack {
                        Text("Name")
                        Spacer()
                    }
                    TextField("Name", text: $name)
                        .padding()
                        .border(.gray)
                    HStack {
                        Text("Email")
                        Spacer()
                    }
                    TextField("Email", text: $name)
                        .padding()
                        .border(.gray)
                    HStack {
                        Text("Phone Number")
                        Spacer()
                    }
                    TextField("Phone number", text: $name)
                        .padding()
                        .border(.gray)
                    
                    Button{
                        
                    }label: {
                        Text("Confirm")
                            .foregroundColor(.black)
                            .padding()
                    }
                    .frame(width: 300)
                    .background(.green)
                        .cornerRadius(16)
                }
                
                .padding()
                .background()
                
            }
        }
    }
}

struct TravelDetails2_Previews: PreviewProvider {
    static var previews: some View {
        TravelDetails2()
    }
}
