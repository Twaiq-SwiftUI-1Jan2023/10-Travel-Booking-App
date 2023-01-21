//
//  HotelPage.swift
//  Nada-TravelAssigment
//
//  Created by N on 20/01/2023.
//

import SwiftUI

struct HotelPage: View {
    var bbutton: [Buttons] = [Buttons(name: "TV", img: "tv")
                            , Buttons(name: "Wifi", img: "wifi")
                              , Buttons(name: "Sport", img: "figure.disc.sports")
                              , Buttons(name: "Hospetl", img: "stethoscope")
                              , Buttons(name: "Wifi5", img: "tv")
                              , Buttons(name: "Wifi6", img: "tv")
                              , Buttons(name: "Wifi7", img: "tv")
                              , Buttons(name: "Wifi8", img: "tv")
                              , Buttons(name: "Wifi9", img: "tv")]
    var body: some View {
        ZStack{
            Color("c1").ignoresSafeArea()
           
            
            VStack{
                
                
                HStack{
                    Button{}
                label: {
                    Image(systemName: "arrow.backward.square")
                        .font(.system(size: 25))
                        .foregroundColor(.white)
                        .padding()
                }
                    Spacer()
                    Text("Fairmont Hotel")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .bold()
                        .foregroundColor(.white)
                        .padding(.trailing , 120)
                }//end of h stack
                ZStack{
                    RoundedRectangle(cornerRadius: 80)
                        .fill(Color(UIColor.secondarySystemBackground)).ignoresSafeArea()
                    VStack{
                        Image("room1").resizable().frame(width: 350 , height: 200)
                        HStack{
                            Button("Deatils"){}.foregroundColor(.black)
                            Button("Facillites"){}
                            Button("Revews"){}.foregroundColor(.black)
                            Button("Direction"){}.foregroundColor(Color("c1")).padding(.leading,90)
                        }

                        ScrollView(){
                        VStack {
                            ForEach(bbutton , id: \.id){i in
                                
                                    HStack{
                                        ForEach(0..<3){n in
                                        ZStack{
                                            
                                            RoundedRectangle(cornerRadius: 70)
                                                .fill(.gray)
                                                .frame(width: 90 , height: 100)
                                                .padding()
                                            VStack{
                                                Image(systemName: "tv")
                                                Text(i.name)
                                            }.padding()
                                        }
                                        }
                                      }
                                    
                                }
                            }
           
                        }
                        ZStack{
                            
                            RoundedRectangle(cornerRadius: 20)
                                .fill(Color("c1"))
                                .frame(width: 300 , height: 40)
                            
                            Button("Book Now") {
                               
                            }.foregroundColor(.white)
                                .padding()
                            
                        }//end of z stack button
                    }//end of v stack
                }//en of z stack round
            }
        }
    }
}

struct HotelPage_Previews: PreviewProvider {
    static var previews: some View {
        HotelPage()
    }
}
//MARK: -model
struct Buttons {
    var id = UUID()
    var name:String
    var img :String
  
}
