//
//  ContentView.swift
//  homework ass10
//
//  Created by MAJEDAH on 27/06/1444 AH.
//

import SwiftUI

struct ContentView: View {
    
    static let mk = Color("mm")
    static let wall = Color("wallpaper")
    static let pinke = Color("pinkk")
    static let prepple = Color("prpp")
    static let yallo = Color("yall")
    static let papblo = Color("papyblo")
    static let gray = Color("gray")
    var body: some View {
        VStack {
            HStack(spacing: 150){
                
                Image(systemName: "arrowshape.backward.fill")
                    .foregroundColor(Color.white)
                Text("Sign in")
                    .font(.headline)
                    .foregroundColor(Color.white)
                Spacer()
                
                
            }
            Spacer()
            ZStack{
                Rectangle()
                    
                    .cornerRadius(60)
                    .foregroundColor(ContentView.gray)
                    .frame(width: 400 , height: 750)
                    .offset(y: 50)
                Image( "pr1")
                     .resizable()
                     .frame(width: 120 , height: 120)
                     .clipShape(Circle())
                     .offset(y: -300)
                Image(systemName: "plus")
                    .foregroundColor(.white)
                    .frame(width: 25 , height: 25)
                    .background(ContentView.wall)
                    .clipShape(Circle())
                    .offset(x: 40 , y: -250)
                VStack (spacing: 30){
                    Spacer()
                    Text("Enter Email")
                        .offset(x: -140)
                   
                        HStack {
                            Spacer()
                            Image(systemName: "envelope")
                            TextField("   your Email", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                        }
                        
                       
                    
                    
                    
                        HStack {
                            Text("Password")
                                .offset(x: -140)
                            
                        }
                    
                    HStack {
                        Spacer()
                        Image(systemName: "lock.fill")
                        TextField("    your password", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                    }
                    
                    Button{
                        
                    }label: {
                        Text("Sign in ").font(.title)
                            .foregroundColor(Color.white)
                        
                            .padding()
                            .frame(width: 400.0, height: 50.0)
                    }.background(ContentView.wall)
                    .cornerRadius(20)
                    
                    VStack (spacing: 150) {
                        HStack {
                            Text("Don't have an account?")
                            Button("sign up") {
                                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                            }.font(.headline)
                            
                            
                        }
                        
                        
                        
                        
                        VStack (spacing: 50){
                            Text("or sign in with")
                            
                            
                            HStack (spacing: 100){
                                
                                
                                    Button {
                                        
                                    }label: {
                                       
                                            
                                        Text("Google")
                                            .foregroundColor(Color.black)
                                            .padding()
                                            .background()
                                            .cornerRadius(10)
                                }
                                
                                
                                Button {
                                }label: {
                                    Text("facebook")
                                        .foregroundColor(Color.white)
                                        .padding()
                                        .background(ContentView.mk)
                                        .cornerRadius(10)
                                }
                                
                            }
                        }
                    }
                    
                }
            }
                
            }.background(ContentView.wall)
            
            
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }

