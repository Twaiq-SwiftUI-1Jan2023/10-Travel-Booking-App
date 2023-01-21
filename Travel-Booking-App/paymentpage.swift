//
//  paymentpage.swift
//  Travel-Booking-App
//
//  Created by البراء سيت on 27/06/1444 AH.
//

import SwiftUI

struct paymentpage: View {
    @State var username = ""
    @State var Password = ""
    var body: some View {
        
        
        ZStack {
            Color("green1")
                .ignoresSafeArea()
            
            VStack {
                
                HStack{
                    Button {
                        
                    }
                    label : {
                        Image(systemName: "arrow.left")
                        
                            .resizable()
                            .frame(width: 20, height: 20)
                    }
                    .padding()
                    Spacer()
                    
                    Text("Pon trafic Hotel")
                    Spacer()
                }
                .foregroundColor(Color.white)
                .padding(.horizontal)
                ZStack{
                    Color.white
                        .ignoresSafeArea()
                    VStack {
                        
                        Image("r2")
                            .resizable()
                            .padding(.bottom)
                            .frame(width: 350, height: 250)
                            .cornerRadius(20)
                        
                        HStack {
                            Text("pan spacific Hotel")
                                .padding(.leading)
                            
                            Spacer()
                            Image(systemName: "star.fill")
                            
                                .foregroundColor(.yellow)
                            Text("4.9(5.6k reviews)")
                        }
                        .padding([.top, .leading, .trailing])
                        
                        HStack {
                            Text("Dhoko. Bangladesh")
                                .padding(.leading)
                                .opacity(0.4)
                            
                        }
                        .frame(width: 380, height: 20, alignment: .leading)
                        
                        
                        HStack{
                            Text("Name")
                                .opacity(0.5)
                        }
                        .frame(width: 350, height: 30, alignment: .leading)
                        TextField("Enter your name",text: $username)
                            .padding()
                            .frame(width: 350 , height: 40)
                            .background(Color.black.opacity(0.06))
                            .cornerRadius(10)
                        
                        HStack{
                            Text("Enter Email")
                                .opacity(0.5)
                        }
                        .frame(width: 350, height: 30, alignment: .leading)
                        
                        
                        HStack{
                            
                            SecureField("Email",text: $Password)
                                .padding()
                        }
                        .padding()
                        .frame(width: 350 , height: 40)
                        
                        .background(Color.black.opacity(0.06))
                        
                        HStack{
                            Text("Enter your phone ")
                                .opacity(0.5)
                        }
                        .frame(width: 350, height: 30, alignment: .leading)
                        
                        HStack{
                            TextField(" number ", text: $Password)
                                .keyboardType(.numberPad)
                            
                                .padding()
                        }
                        .padding()
                        .frame(width: 350 , height: 40)
                        
                        .background(Color.black.opacity(0.06))
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        VStack{
                            Button {
                                
                            } label: {
                                Text("procsses to pay ")
                                
                                    .frame(width: 350, height: 60)
                            }
                            .foregroundColor(Color.white)
                            .background(Color("green1"))
                            .cornerRadius(25)
                            .padding(30)
                            
                        }
                        
                        
                    }
                    
                    
                }
                
            }
            
        }
    }
}

struct paymentpage_Previews: PreviewProvider {
    static var previews: some View {
        paymentpage()
    }
}
