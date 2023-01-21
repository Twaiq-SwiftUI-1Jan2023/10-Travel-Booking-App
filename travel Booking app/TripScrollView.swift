//
//  TripScrollView.swift
//  travel Booking app
//
//  Created by Abdullah Aloufi on 28/06/1444 AH.
//

import SwiftUI

struct TripScrollView: View {
    @State var lis : [String] = ["image1","image2","image3","image4"]
    var body: some View {
        
        VStack{
            ScrollView {
                VStack(spacing: 10) {
                    ForEach(lis , id: \.self) {i in
                        HStack{
                            
                            Image("\(i)")
                                .resizable()
                                .frame(width: 150, height: 130)
                                .cornerRadius(20)
                            
                            VStack{
                                Text("Hotel Name")
                                    .padding()
                                
                                HStack {
                                    VStack {
                                        Text("cheak in ")
                                            .font(.footnote)
                                            .foregroundColor(.green)
                                        
                                        Text("sat Aug 21")
                                            .font(.caption)
                                            .foregroundColor(.gray)
                                    }
                                    .padding(.leading)
                                    Spacer()
                                    VStack{
                                        
                                        Text("cheak out ")
                                            .font(.footnote)
                                            .foregroundColor(.red)
                                        Text("sat Aug 21")
                                            .font(.caption)
                                            .foregroundColor(.gray)
                                        
                                    }
                                    .padding(.trailing,30)
                                    
                                    
                                }
                                Button{
                                    
                                }label: {
                                    Text("Rate us")
                                        .padding()
                                }.background(.green)
                                    .cornerRadius(16)
                                .padding()
                                
                            }
                            
                            
                            
                        }
                        .foregroundColor(.black)
                        
                        .padding()
                        .frame(width: 380, height: 200)
                        .background(Color("back"))
                        
                    }
                }
            }
        }
    }
}


struct TripScrollView_Previews: PreviewProvider {
    static var previews: some View {
        TripScrollView()
    }
}
