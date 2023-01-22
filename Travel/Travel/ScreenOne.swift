//
//  ScreenOne.swift
//  Travel
//
//  Created by Batool on 20/1/2023.
//

import SwiftUI

struct ScreenOne: View {
    @State var email: String = ""
    @State var password: String = ""
    static let Sky = Color("sky")
    static let Orange1 = Color("ornge")
    static let Facebook = Color("facebook")
    static let Sys = Color("sys")
    var body: some View {
        VStack {
            ScreenOne.Sky
            HStack {
                ZStack {
                    Button {
                        
                    } label: {
                        Image(systemName: "arrow.left")
                    }.foregroundColor(Color.white)
                        .font(.system(size: 20))
                        .offset(x: -160, y: 20)
                    
                    
                    Text ("Sign In")
                        .fontWeight(.semibold)
                        .foregroundColor(Color.white)
                        .offset(x: 0, y: 20)
                    
                }
                
            }
            ZStack {
                Image(systemName: "airplane.circle")
                    .font(.system(size: 90))
                    .offset(x: 0, y: -270)
                    .zIndex(50)
                    .foregroundColor(ScreenOne.Orange1)
                
                RoundedRectangle(cornerRadius: 50)
                    .foregroundColor(Color.white)
                    .frame(width: 400, height: 760)
                    .offset(x: 0, y: 110)
                
                VStack {
                    
                    Text("Enter Email")
                        .foregroundColor(Color.gray)
                        .multilineTextAlignment(.leading)
                        .offset(x: -130, y: 60)
                    
                    
                    TextField("example@gmail.com", text: $email)
                        .frame(width: 350, height: nil)
                        .padding(.all, 5)
                        .textFieldStyle(.roundedBorder)
                        .font(Font.system(size: 20, design: .default))
                        .multilineTextAlignment(.leading)
                        .offset(x: 0, y: 60)
                    
                    
                    Text("Password")
                        .foregroundColor(Color.gray)
                        .multilineTextAlignment(.leading)
                        .offset(x: -135, y: 60)
                    
                    
                    SecureField("•••••••••••••••", text: $password)
                        .frame(width: 350, height: nil)
                        .padding(.all, 5)
                        .textFieldStyle(.roundedBorder)
                        .font(Font.system(size: 20, design: .default))
                        .multilineTextAlignment(.leading)
                        .offset(x: 0, y: 60)
                    
                    
                    
                    Button ("Sign In") {
                    }.frame(width: 350, height: 50, alignment: .center).background(ScreenOne.Sky).cornerRadius(15).foregroundColor(Color.white).bold()
                        .offset(x: 0, y: 80)
                    
                    
                    Text("Don't have an account?")
                        .frame(width: 250, height: 50, alignment: .leading)
                        .foregroundColor(Color.gray)
                        .offset(x: 0, y: 80)
                    
                    Button ("Sign Up") {
                        
                    }.foregroundColor(ScreenOne.Sky)
                        .frame(width: 250, height: 50, alignment: .trailing)
                        .offset(x: 0, y: 22)
                    
                    Text("Or Sign in with")
                        .padding()
                        .offset(x: 0, y: 165)
                    
                    
                    HStack (spacing: 10){
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
                        Spacer()
                        
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
                    }.padding(45)
                        .offset(x: 0, y: 120)
                    
                }
            }
        }.background(ScreenOne.Sky)
    }
}

struct ScreenOne_Previews: PreviewProvider {
    static var previews: some View {
        ScreenOne()
    }
}
