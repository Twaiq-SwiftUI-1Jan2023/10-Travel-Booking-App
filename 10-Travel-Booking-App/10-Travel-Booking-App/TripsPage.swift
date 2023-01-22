//
//  TripsPage.swift
//  10-Travel-Booking-App
//
//  Created by سرّاء. on 28/06/1444 AH.
//

import SwiftUI

struct TripsPage: View {
    var body: some View {
        let t1 = TripsCard.Tcard
            
        TabView{
            
            ZStack{
                    Color("Color")
                        .ignoresSafeArea()
                        .frame(width: 400, height: 100)
                        .padding(.bottom, 700)
                    Text("My Trips")
                        .padding(.bottom, 670)
                        .foregroundColor(Color.white)
                        .font(.title3)
                    Spacer()
                    VStack{

                        HStack(spacing: 8){
                            Button(action: {}, label: {
                                Text("UpComing")
                                  
                            })
                            Button(action: {}, label: {
                                Text("Completed")
                                    .frame(width: 120, height: 60)
                                    .background(Color("Color"))
                                    .foregroundColor(Color.white)
                       
                            })
                            Button(action: {}, label: {
                                Text("Concelled")
                      
                            })
                            
                        }.bold()
                            .foregroundColor(Color("Color"))
                        .frame(width: 360, height: 60)
                            .background(Color.white)
                            .cornerRadius(14)
                            .padding()
                        ScrollView(.vertical, showsIndicators: true){
                            VStack{
                                ForEach(t1, id: \.id){i in
                                    
                                    VStack{
                                        HStack{
                                            Image(i.image)
                                                .resizable()
                                                .frame(width: 120, height: 100)
                                                .cornerRadius(8)
                                            VStack(alignment: .leading){
                                                Text(i.title)
                                                    .padding(.leading)
                                                HStack{
                                                    Text("Check-In")
                                                        .foregroundColor(Color.cyan)
                                                    Spacer()
                                                    Text("Check-out")
                                                        .foregroundColor(Color.red)
                                                    Spacer()
                                                } .font(.caption)
                                                    .padding(.leading)
                                                    .padding(.trailing)
                                                HStack{
                                                    Text("Sat.Aug 21")
                                                    Spacer()
                                                    Text("Tues.Aug 24")
                                                    Spacer()
                                                }.foregroundColor(Color.gray)
                                                    .font(.footnote)
                                                    .padding(.leading)
                                                    .padding(.trailing)
                                                Button(action: {}, label: {
                                                    HStack{
                                                        Image(systemName: "pencil.line")
                                                        Text("Write Reviews")
                                                        
                                                    }   .font(.footnote)
                                                        .foregroundColor(Color.white)
                                                        .frame(width: 130, height: 20)
                                                        .background(Color.orange)
                                                        .cornerRadius(12)
                                                        .padding(.leading)
                                                    
                                                })
                                                
                                                
                                            }
                                        }.padding()
                                        
                                    } .frame(width: 340, height: 130)
                                        .background(Color.white)
                                        .cornerRadius(16)
                                       // .padding()
                                    
                                }
                            }
                            
                            
                        }
                        
                        
                    }.frame(width: 400, height: 700)
                        .background(Color("Color1"))
                        .padding(.top, 80)

                    
                    
                    
            }
            
      
        }.padding(.bottom)
//            .background(Color.white)
        
    }
}

struct TripsPage_Previews: PreviewProvider {
    static var previews: some View {
        TripsPage()
    }
}
