//
//  Signup-Screen.swift
//  Travel-Booking-App
//
//  Created by البراء سيت on 27/06/1444 AH.
//

import SwiftUI

struct Signup_Screen: View {
    @State var username = ""
    @State var Password = ""
    var body: some View {
        ZStack{
            Color("green1")
                .ignoresSafeArea()
            
            VStack (){
                HStack{
                    
                    Button {
                        
                    }
                    label : {
                        
                        Image(systemName: "arrow.left")
                        
                            .resizable()
                            .frame(width: 20, height: 20)
                    }
                    Spacer()
                    Text("Sign in  ")
                    
                    Spacer()
                }
                .foregroundColor(Color.white)
                .padding()
                
                ZStack {
                    
                    Color.white
                        .cornerRadius(50)
                    VStack {
                        
                    }
                    Spacer()
                    
                    VStack{
                        Spacer()
                        
                        VStack{
                            HStack{
                                Text("Enter  Email ")
                                    .opacity(0.5)
                            }
                            .frame(width: 350, height: 30, alignment: .leading)
                            TextField("Email",text: $username)
                                .padding()
                                .frame(width: 350 , height: 40)
                                .background(Color.black.opacity(0.06))
                                .cornerRadius(10)

                            HStack{
                                Text("password")
                                    .opacity(0.5)
                            }
                            .frame(width: 350, height: 30, alignment: .leading)
                            
                            ZStack{
                                HStack{
                                    Image(systemName: "lock")
                                        .resizable()
                                        .frame(width:20, height:30 )
                                    SecureField("Password",text: $Password)
                                        .padding()
                                }
                                .padding()
                                .frame(width: 350 , height: 40)
                                
                                .background(Color.black.opacity(0.06))
                            }
                            .cornerRadius(10)
                        
                        
                            
                            
                            
                            HStack{
                                Text("Confirm password")
                                    .opacity(0.5)
                            }
                            .frame(width: 350, height: 30, alignment: .leading)
                            ZStack{
                                HStack{
                                    Image(systemName: "lock")
                                        .resizable()
                                        .frame(width:20, height:30 )
                                    
                                    
                                    SecureField("Password",text: $Password)
                                        .padding()
                                    
                                    
                                }
                                .padding()
                                .frame(width: 350 , height: 40)
                                
                                .background(Color.black.opacity(0.06))
                            }
                            .cornerRadius(10)
                        }
                        
                        
                        
                        
                        
                        Button {
                            
                        } label: {
                            Text("sign in")
                            
                                .frame(width: 350, height: 60)
                        }
                        .foregroundColor(Color.white)
                        .background(Color("green1"))
                        .cornerRadius(25)
                        .padding(30)
                        
                        
                        HStack{
                            Text("Already have account ?")
                            Button {
                                
                            } label: {
                                Text("sign in")
                                    .foregroundColor(Color("green1"))
                            }
                        }
                        Spacer()
                        
                        VStack{
                            HStack{
                                Text("or sign in with ?")
                            }
                            
                            HStack{
                                ZStack{
                                    Rectangle()
                                        .frame(width: 140, height: 50)
                                        .foregroundColor(Color.black.opacity(0.09))
                                        .cornerRadius(10)
                                    
                                    Button {
                                        
                                    } label: {
                                        Image("Google")
                                            .resizable()
                                            .frame(width:50, height:50 )
                                        
                                        Text("Google")
                                        // .padding()
                                        
                                    }
                                    .foregroundColor(Color.black)
                                    
                                    .cornerRadius(25)
                                    .padding()
                                }
                                ZStack{
                                    Rectangle()
                                    
                                        .frame(width: 140, height: 50)
                                        .foregroundColor(Color("facebock"))
                                        .cornerRadius(15)
                                    VStack{
                                        HStack{
                            
                                            Button {
                                                
                                            } label: {
                                                Image("facebook1")
                                                    .resizable()
                                                    .frame(width:30, height:30 )
                                                // .foregroundColor(Color.white)
                                                
                                                Text("Facebock")
                                                
                                            }
                                            .foregroundColor(Color.white)
                                            .cornerRadius(25)
                                        }
                                    }
                                }
                            }
                            .padding()
                        }
                    
                        // vstac
                    }
                    Spacer()
                    
                }
                
            }
            .frame(width: 400, height: 750)
            
        }
        
    }
    
}

struct Signup_Screen_Previews: PreviewProvider {
    static var previews: some View {
        Signup_Screen()
    }
}
