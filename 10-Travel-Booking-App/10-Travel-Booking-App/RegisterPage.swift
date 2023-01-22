//
//  RegisterPage.swift
//  10-Travel-Booking-App
//
//  Created by سرّاء. on 27/06/1444 AH.
//

import SwiftUI

struct RegisterPage: View {
    @State var email: String = ""
    @State var pass: String = ""
    var body: some View {
        NavigationView {
            ZStack{
                Color("Color")
                    .ignoresSafeArea()
                
              
                VStack{
                  
                    Spacer()
                    VStack{
                        VStack(alignment: .leading){
                        Text("Enter Email")
                            .foregroundColor(Color.gray)
                        
                        
                        HStack{
                            Image(systemName: "envelope")
                            
                            TextField("example@gmail.com", text: $email)
                                .font(.title2)
                            
                            
                        } .padding()
                            .background(Color.white)
                            .frame(width: 360)
                            .cornerRadius(18)
                        
                        Text("Password")
                            .foregroundColor(Color.gray)
                        
                        HStack{
                            Image(systemName: "lock")
                            
                            SecureField("************", text: $pass)
                                .font(.title2)
                            
                            
                        } .padding()
                            .background(Color.white)
                            .frame(width: 360)
                            .cornerRadius(18)
                            
                            Text("Confirm Password")
                                .foregroundColor(Color.gray)
                            
                            HStack{
                                Image(systemName: "lock")
                                
                                SecureField("************", text: $pass)
                                    .font(.title2)
                                
                                
                            } .padding()
                                .background(Color.white)
                                .frame(width: 360)
                                .cornerRadius(18)
                        
                            
                        
                        Button(action: {}, label: {
                            Text("Sign Up")
                                .foregroundColor(Color.white)
                                .font(.title2)
                        }).frame(width: 360, height: 60)
                            .background(Color("Color"))
                            .cornerRadius(18)
                            .padding()
                    }
                        
                        VStack(alignment: .leading){
                            HStack{
                                Text("Don't have an account?")
                                    .foregroundColor(Color.gray)
                                
                                NavigationLink(destination: ContentView(), label: {
                                    Text("Sing Up")
                                        .foregroundColor(Color("Color"))
                                        .bold()
                                })
                              
                            }.font(.title3)
                            
                            Spacer()
                        }
                            
                            Text("Or Sign Up with")
                                .font(.title3)
                                .frame(width: 200, height: 30, alignment: .center)
                            HStack{
                                HStack{
                                    Image("google")
                                        .resizable()
                                        .frame(width: 30, height: 30)
                                    Text("Google")
                                        .bold()
                               
                                }.frame(width: 140, height: 50)
                                    .background(Color.white)
                                    .cornerRadius(8)
                                    .padding()
                                HStack{
                                    Image("facebook")
                                            .resizable()
                                        .frame(width: 30, height: 30)
                                    Text("Facebook")
                                        .foregroundColor(Color.white)
                                        .bold()
                                }.frame(width: 140, height: 50)
                                    .background(Color("ColorFace"))
                                    .cornerRadius(8)
                                    .padding(.trailing)
                                
                            }.padding(.leading)
                            .padding(.bottom, 40)
                            
                       
                        
                    }.padding(.leading)
                        .padding(.top, 80)
                    .frame(width: 400, height: 700)
                        .background(Color("Color1"))
                        .cornerRadius(48)
                        .padding(.bottom, -60)
                    
                } .padding()
                ZStack{
                        Circle()
                            .fill(Color.white)
                            .frame(width: 120)
                            .padding(.bottom, 550)
                    Image("logo")
                        .resizable()
                        .frame(width: 60, height: 60)
                        .padding(.bottom, 550)
                    
                }

                
                
            }
        }
        
    }
}

struct RegisterPage_Previews: PreviewProvider {
    static var previews: some View {
        RegisterPage()
    }
}
