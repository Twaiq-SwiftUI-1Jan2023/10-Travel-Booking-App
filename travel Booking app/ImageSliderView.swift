//
//  ImageSliderView.swift
//  travel Booking app
//
//  Created by Abdullah Aloufi on 28/06/1444 AH.
//

import SwiftUI

struct ImageSliderView: View {
    private let images = ["image1", "image2", "image3", "image4"]
    var body: some View {
        VStack{
            TabView {
                ForEach(images, id: \.self) { item in
                     //3
                    VStack {
                        Image(item)
                            .resizable()
                            .scaledToFit()
                            .padding()
                        VStack {
                            HStack {
                                Text("Hotel Name")
                                    .font(.largeTitle)
                                Spacer()
                            }
                            HStack {
                                Image(systemName: "star.fill")
                                    .foregroundColor(.yellow)
                                Spacer()
                                Text("150")
                                    .font(.title)
                                    .foregroundColor(.green)
                                Text("/ per Night")
                            }
                        }.padding()
                    }
                }
                
                
            }
            .tabViewStyle(PageTabViewStyle())
            
        }
        
    }
}

struct ImageSliderView_Previews: PreviewProvider {
    static var previews: some View {
        ImageSliderView()
    }
}
