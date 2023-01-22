//
//  ContentView.swift
//  Project 4
//
//  Created by RMP on 27/06/1444 AH.
//

import SwiftUI

struct ScreenView1: View {
    
    
    @State var email = "example@hotmail.com"
    @State var password = "password"
    
    
    var body: some View {
        
        ZStack {
            
            Color.orange.opacity(0.35).ignoresSafeArea()
            
            
            VStack {
                
                HStack(spacing: 100) {
                    
                    Button {
                        
                        
                    } label: {
                        
                        Image(systemName: "chevron.left.square.fill").resizable().frame(width: 30, height: 30, alignment: .leading).foregroundColor(.primary)
                        
                    }
                    
                    Text("Sign in").font(.title3).fontWeight(.semibold)
                    
                }.padding(.trailing, 130)
                
            }.padding(.bottom, 700)
            
            
            VStack {
                
                RoundedRectangle(cornerRadius: 44, style: .continuous).frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height - 150, alignment: .center).foregroundColor(.white).opacity(0.55).overlay(alignment: .center) {
                    
                    
                    VStack(spacing: 1) {
                        
                        Text("Enter Email").padding(.leading, -170).font(.headline).fontWeight(.semibold).opacity(0.75)
                        
                        TextField("Email", text: $email).multilineTextAlignment(.center).font(.headline).fontWeight(.semibold).padding().border(.gray).padding().overlay() {
                            
                            RoundedRectangle(cornerRadius: 10.0).strokeBorder(Color.gray).padding(14)
                            
                            Image(systemName: "envelope.fill").padding(.trailing, 300).font(.title2)
                            
                        }.padding(.bottom, 30)
                        
                        Text("Enter Password").padding(.leading, -170).font(.headline).fontWeight(.semibold).opacity(0.75)
                        
                        SecureField("Password", text: $password).multilineTextAlignment(.center).font(.headline).fontWeight(.semibold).padding().border(.gray).padding().overlay() {
                            
                            RoundedRectangle(cornerRadius: 10.0).strokeBorder(Color.gray).padding(14)
                            
                            Image(systemName: "lock.fill").padding(.trailing, 300).font(.title2)
                            
                        }.padding(.bottom, 40)
                        
                        Button {
                            
                            
                            
                        } label: {
                            
                            RoundedRectangle(cornerRadius: 10.0).frame(width: UIScreen.main.bounds.width - 30, height: 60, alignment: .center).foregroundColor(.primary).overlay(alignment: .center) {
                                
                                Text("Sign In").font(.headline).fontWeight(.semibold).foregroundColor(.white)
                                
                            }
                            
                        }.padding(.bottom, 40)
                        
                        
                        HStack {
                            
                            Text("Don't have an account?").fontWeight(.regular)
                            
                            Button {
                                
                                
                            } label: {
                                
                                Text("Sign Up").font(.headline).fontWeight(.semibold).foregroundColor(.primary)
                                
                            }
                            
                        }
                        
                       
                        
                        VStack {
                            
                            Text("Or sign in  with").font(.headline)
                            
                            HStack(spacing: 70) {
                                
                                Button {
                                    
                                    
                                } label: {
                                     
                                    Image("facebook").resizable().frame(width: 120, height: 60, alignment: .center).font(.headline).fontWeight(.semibold).foregroundColor(.white).background(Color.blue).cornerRadius(10).shadow(radius: 10)
                                    
                                }
                                
                                Button {
                                    
                                    
                                } label: {
                                     
                                    Image("google").resizable().frame(width: 120, height: 60, alignment: .center).font(.headline).fontWeight(.semibold).foregroundColor(.white).background(Color.black).cornerRadius(10).shadow(radius: 10)
                                    
                                }
                                
                            }.padding(.top, 20)
                            
                        }.padding(.top, 50)

                        
                    }.padding(.bottom, 30)
                    
                }
                
                
                
                
            }.padding(.top, 150)
            
        }
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ScreenView1()
    }
}
