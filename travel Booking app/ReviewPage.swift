//
//  ReviewPage.swift
//  travel Booking app
//
//  Created by Abdullah Aloufi on 28/06/1444 AH.
//

import SwiftUI

struct ReviewPage: View {
    @State var name = ""
    var body: some View {
        ZStack{
            Color.orange
                .ignoresSafeArea()
            VStack{
                HStack {
                    Text("Rate Us:")
                        .font(.largeTitle)
                    Spacer()
                }.padding()
                HStack {
                    Image(systemName: "star.fill")
                        .font(.largeTitle)
                    .foregroundColor(.yellow)
                    Image(systemName: "star.fill")
                        .font(.largeTitle)
                        .foregroundColor(.yellow)
                    Image(systemName: "star.fill")
                        .font(.largeTitle)
                        .foregroundColor(.yellow)
                    Image(systemName: "star.fill")
                        .font(.largeTitle)
                        .foregroundColor(.yellow)
                    Image(systemName: "star.fill")
                        .font(.largeTitle)
                        .foregroundColor(.yellow)
                }
                
                TextField("write your rivew", text: $name)
                    .frame(height: 300)
                    .background()
                    .border(.gray)
                    .padding()
                
                HStack{
                    Button{
                        
                    }label: {
                        Text("Submit")
                            .font(.largeTitle)
                            .foregroundColor(.red)
                            .padding()
                    }.background(.green)
                        .cornerRadius(16)
                        
                }
                
                
            }
        }

    }
}

struct ReviewPage_Previews: PreviewProvider {
    static var previews: some View {
        ReviewPage()
    }
}
