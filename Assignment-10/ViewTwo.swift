//
//  ViewTwo.swift
//  Assignment-10
//
//  Created by ahmed alharbi on 28/06/1444 AH.
//

import SwiftUI

struct ViewTwo: View {
    @State var email = ""
    @State var password = ""
    @State var confirmPassword = ""
    var body: some View {
        ScrollView {
            ZStack {
             
                Spacer()
                Color("light-green")
                    .ignoresSafeArea()
                
                ZStack {
                    Rectangle()
        //                .edgesIgnoringSafeArea(.bottom)
                        
                        .frame(width: 400,height: 1150)
                        .padding(.bottom,-300)
                        .cornerRadius(50)
                        .foregroundColor(Color("light-gray"))
                        .offset(y: 150)
                
                    
                    ZStack {
                        Circle()
                        .frame(width: 110)
                        .offset(y: -270)
                    .foregroundColor(.white)
                        Image("logo")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 80,height: 80)
                            .offset(y: -270)
                        
                    }
                    VStack(alignment: .leading) {
                        Text("Enter Email")
                            .font(.headline)
                        
                            .padding(.trailing,20)
                            .frame(width: 200)
                            .opacity(0.3)
                        
                        ZStack {
                            Rectangle()
                                .frame(width: 350,height: 40)
                                .cornerRadius(5)
                                .foregroundColor(.white)
                            HStack {
                                Image(systemName: "envelope")
                                    .foregroundColor(.gray)
                                    .padding(.leading,50)
                                TextField("Your Email", text: $email)
                                    .frame(width: 350)
                                
                            }
                        }
                        VStack(alignment:.leading) {
                            Text("Password")
                                .font(.headline)
                            
                                .padding(.trailing,30)
                                .frame(width: 200)
                                .opacity(0.3)
                            ZStack {
                                Rectangle()
                                    .frame(width: 350,height: 40)
                                    .cornerRadius(5)
                                    .foregroundColor(.white)
                                HStack {
                                    Image(systemName: "lock")
                                        .foregroundColor(.gray)
                                        .padding(.leading,50)
                                    SecureField("Your Passowrd", text: $password)
                                        .frame(width: 350)
                                }
                            }
                        }
                        VStack(alignment:.leading) {
                            Text("Confirm Password")
                                .font(.headline)
                            
                                .padding(.trailing,-30)
                                .frame(width: 200)
                                .opacity(0.3)
                            ZStack {
                                Rectangle()
                                    .frame(width: 350,height: 40)
                                    .cornerRadius(5)
                                    .foregroundColor(.white)
                                HStack {
                                    Image(systemName: "lock")
                                        .foregroundColor(.gray)
                                        .padding(.leading,50)
                    SecureField("Your Passowrd", text: $confirmPassword)
                                        .frame(width: 350)
                                }
                            }
                        }
                    }
                    
                        
                    
                    
                }
                VStack {
                    
                    Button {
                        
                    } label: {
                        
                    }

                    HStack {
                        

                        Text("Don't have an account?")
                            .opacity(0.3)
                        Button {
                            
                        } label: {
                            Text("Sign Up")
                                
                        }
                    }
                }.frame(height: 400).padding(.bottom,-300)

                
                VStack {
                    
                    // Sign in form or logo
                    VStack{
                    HStack {
                        Button {
                            
                        } label: {
                            Image(systemName: "arrow.left")
                                .frame(width: 30,height: 30)
                                .foregroundColor(.white)
                        }
                        Spacer()
                        Text("Sign In")
                            .foregroundColor(.white)
                            .padding(.trailing,40)
                            .font(.headline)
                            .bold()
                        Spacer()
                    }.padding().frame(width: 400,height: 30)
                    }.padding()
                         Spacer()
                    
                         Text("Or Sign in with")
                        
                        
                         HStack {
                             Button(action: {
                                 // Perform Google sign in action
                             }) {
                                 ZStack {
                                     Rectangle()
                                         .frame(width: 155,height: 60)
                                         .foregroundColor(.white)
                                         .cornerRadius(15)
                                         .padding()
                                     HStack(spacing:-80) {
                                         
                                         Image("google1")
                                             .resizable()
                                         .frame(width: 30, height: 30)
                                         
                                     .padding(.trailing,90)
                                         Text("Google")
                                             .foregroundColor(.black)
                                             .bold()
                                     }
                                     
                                 }
                             }
                             
                             Spacer()
                             
                             Button(action: {
                                 // Perform Facebook sign in action
                             }) {
                                 ZStack {
                                     Rectangle()
                                         .frame(width: 155,height: 60)
                                         .foregroundColor(Color("facebook"))
                                         .cornerRadius(15)
                                         .padding()
                                     HStack(spacing:-80) {
                                         
                                         Image("facebook")
                                             .resizable()
                                         .frame(width: 30, height: 30)
                                     .padding(.trailing,90)
                                         Text("Facebook")
                                             .foregroundColor(.white)
                                             .bold()
                                     }
                                     
                                 }
                                 
                             }
                         }
                         .padding()
                     }
                .padding()
            }.edgesIgnoringSafeArea(.bottom)
        }.ignoresSafeArea(.all)
        
    }
}

struct ViewTwo_Previews: PreviewProvider {
    static var previews: some View {
        ViewTwo()
    }
}
