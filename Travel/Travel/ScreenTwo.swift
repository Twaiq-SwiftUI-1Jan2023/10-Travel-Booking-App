//
//  ScreenTwo.swift
//  Travel
//
//  Created by Batool on 21/1/2023.
//

import SwiftUI

struct ScreenTwo: View {
    @State var email: String = ""
    @State var password: String = ""
    @State var confirmpassword: String = ""
    static let Sky = Color("sky")
    static let Orange1 = Color("ornge")
    static let Facebook = Color("facebook")
    static let Sys = Color("sys")
    var body: some View {
        VStack {
            HStack {
                ZStack {
                    Button {
                        
                    } label: {
                        Image(systemName: "arrow.left")
                    }.foregroundColor(Color.white)
                        .font(.system(size: 20))
                        .zIndex(5)
                        .offset(x: -160, y: 0)
                    
                    
                    Text ("Register New Account")
                        .fontWeight(.semibold)
                        .foregroundColor(Color.white)
                    
                    Image(systemName: "airplane.circle")
                        .font(.system(size: 90))
                        .offset(x: 0, y: 80)
                        .foregroundColor(ScreenOne.Orange1)
                }
            }
            ZStack {
                RoundedRectangle(cornerRadius: 50)
                    .foregroundColor(Color.white)
                    .frame(width: 400, height: 690)
                    .offset(x: 0, y: 15)
                
                VStack {
                    Group {
                        Text("Enter Email")
                            .foregroundColor(Color.gray)
                            .multilineTextAlignment(.leading)
                            .offset(x: -130, y: -15)
                        
                        
                        
                        TextField("example@gmail.com", text: $email)
                            .frame(width: 350, height: nil)
                            .padding(.all, 5)
                            .textFieldStyle(.roundedBorder)
                            .font(Font.system(size: 20, design: .default))
                            .multilineTextAlignment(.leading)
                            .offset(x: 0, y: -10)
                        
                        Text("Password")
                            .foregroundColor(Color.gray)
                            .multilineTextAlignment(.leading)
                            .offset(x: -135, y: 3)
                        
                        
                        SecureField("•••••••••••••••", text: $password)
                            .frame(width: 350, height: nil)
                            .padding(.all, 5)
                            .textFieldStyle(.roundedBorder)
                            .font(Font.system(size: 20, design: .default))
                            .multilineTextAlignment(.leading)
                            .offset(x: 0, y: 7)
                        
                        Text("Confirm Password")
                            .foregroundColor(Color.gray)
                            .multilineTextAlignment(.leading)
                            .offset(x: -105, y: 20)
                        
                        
                        SecureField("•••••••••••••••", text: $confirmpassword)
                            .frame(width: 350, height: nil)
                            .padding(.all, 5)
                            .textFieldStyle(.roundedBorder)
                            .font(Font.system(size: 20, design: .default))
                            .multilineTextAlignment(.leading)
                            .offset(x: 0, y: 23)
                        
                    }
                    
                    Button ("Sign Up") {
                    }.frame(width: 350, height: 50, alignment: .center).background(ScreenOne.Sky).cornerRadius(15).foregroundColor(Color.white).bold()
                        .offset(x: 0, y: 40)
                    
                    
                    Text("Already have account?")
                        .frame(width: 250, height: 50, alignment: .leading)
                        .foregroundColor(Color.gray)
                        .offset(x: 0, y: 40)
                    
                    Button ("Sign Up") {
                        
                    }.foregroundColor(ScreenOne.Sky)
                        .frame(width: 250, height: 50, alignment: .trailing)
                        .offset(x: -4, y: -17)
                    
                    Text("Or Sign up with")
                        .padding()
                        .offset(x: 0, y: 50)
                    
                    
                    
                    HStack (spacing : 30) {
                        ZStack {
                            Button ("") {
                                
                            }.frame(width: 150, height: 50)
                                .bold()
                                .background(ScreenOne.Sys)
                                .foregroundColor(Color.gray)
                                .cornerRadius(10)
                            
                            HStack {
                                
                                Image("google")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 20, height: 20)
                                
                                Text ("Google")
                                    .fontWeight(.medium)
                                    .foregroundColor(Color.gray)
                            }
                            
                        }
                    
                    
                        ZStack {
                            Button ("") {
                            }.frame(width: 150, height: 50)
                                .bold()
                                .background(ScreenOne.Facebook)
                                .foregroundColor(Color.white)
                            .cornerRadius(10)
                        
                        
                            HStack {
                                
                                Image("facebook")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 20, height: 20)
                                
                                Text ("Facebook")
                                    .fontWeight(.medium)
                                    .foregroundColor(Color.white)
                            }
                        }
                    }.offset(x: 0, y: 50)
                }
            }
        }.background(ScreenOne.Sky)
    }
    
}


struct ScreenTwo_Previews: PreviewProvider {
    static var previews: some View {
        ScreenTwo()
    }
}
