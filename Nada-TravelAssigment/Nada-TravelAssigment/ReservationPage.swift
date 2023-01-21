//
//  ReservationPage.swift
//  Nada-TravelAssigment
//
//  Created by N on 20/01/2023.
//

import SwiftUI

struct ReservationPage: View {
    @State var name = ""
    @State var email = ""
    @State var phone = ""
    @State  var room = 18
    @State  var guset = 18
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
                        Image("room1").resizable().frame(width: 340 , height: 200).padding()
                        
                        HStack{
                            VStack{
                                Text("Fairmont Hotel")
                                    .font(.title2)
                                    .fontWeight(.semibold)
                                    .bold()
                                    .foregroundColor(Color("c1"))
                                Text("Riyadh , Saudi Arabia")
                                    .fontWeight(.semibold)
                                    .bold()
                                    .foregroundColor(.gray)
                                    .padding(.leading)
                                
                            }//end of v stack
                            Spacer()
                            Image(systemName: "star")
                            Text("4.9 (5.6K review)")
                                .fontWeight(.semibold)
                                .bold()
                                .foregroundColor(.gray)
                                .padding(.trailing)
                        }//end of h stack
                        
                        Text("Name")
                            .foregroundColor(.gray)
                            .padding(.trailing , 300)
                            .padding(.top , 10)
                        TextField("Name", text: $name)
                            .textFieldStyle(.roundedBorder)
                            .padding()
                        
                        Text("Email Address")
                            .foregroundColor(.gray)
                            .padding(.trailing , 250)
                            .padding(.top , 10)
                        TextField("example@example", text: $name)
                            .textFieldStyle(.roundedBorder)
                            .padding()
                        
                        Text("Phone Number")
                            .foregroundColor(.gray)
                            .padding(.trailing , 250)
                            .padding(.top , 10)
                        TextField("+966000000", text: $email)
                            .textFieldStyle(.roundedBorder)
                            .padding()

                        
                        HStack {
                            
                            Stepper("Rooms", value: $room, in: 0...130).padding()
                            Stepper("guest", value: $guset, in: 0...130).padding()
                        }

                    }//end of v stack
                }
            }
        }
    }
}

struct ReservationPage_Previews: PreviewProvider {
    static var previews: some View {
        ReservationPage()
    }
}
