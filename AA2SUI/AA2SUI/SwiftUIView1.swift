//
//  SwiftUIView1.swift
//  AA2SUI
//
//  Created by fahad on 29/06/1444 AH.
//

import SwiftUI

struct SwiftUIView1: View {
    @State var email = ""
    @State var password = ""
    var body: some View {
        ZStack{
            Color("11")
                .ignoresSafeArea()
            VStack(spacing: 30){
                Image(systemName: "arrowshape.backward.fill")
                    .padding(.trailing,300)
                    .foregroundColor(Color.white)
                Text("SIGN IN")
                    .font(.headline)
                    .foregroundColor(Color.white)
                
                
                Spacer()
                
            }
            Spacer()
            ZStack{
                Rectangle()
                    .cornerRadius(60)
                    .foregroundColor(Color.white)
                    .frame(width: 400 , height: 650)
                    .offset(y:50)
                Image("1q")
                    .resizable()
                    .frame(width: 100 , height: 100)
                    .clipShape(Circle())
                    .offset(y:-250)
                
                VStack{
                    
                    Text("SIGN IN")
                        .font(.title)
                        .fontWeight(.black)
                        .foregroundColor(Color.black)
                        .frame(width: .infinity)
                        .padding(.trailing,250)
                    //Email and passowrd
                    VStack(alignment: .leading, spacing: 8){
                        Text("User Name")
                            .fontWeight(.bold)
                            .foregroundColor(.gray)
                        
                        TextField("ijustine@gmail.com", text: $email)
                            .font(.system(size: 20, weight: .semibold))
                            .padding(.top,4)
                            .background(Color("44"))
                                .cornerRadius(40)
                        
                        
                    }.padding(.top, 8)
                    
                    VStack(alignment: .leading, spacing: 8){
                        Text("Password")
                            .fontWeight(.bold)
                            .foregroundColor(.gray)
                        
                        SecureField("123456789", text: $password)
                            .font(.system(size: 20, weight: .semibold))
                            .background(Color("44"))
                                .cornerRadius(40)
                        
                        
                    }.padding(.top, 8)
                    
                    VStack(alignment: .leading, spacing: 8){
                        Text("Confim Password")
                            .fontWeight(.bold)
                            .foregroundColor(.gray)
                        
                        SecureField("123456789", text: $password)
                            .font(.system(size: 20, weight: .semibold))
                            .background(Color("44"))
                                .cornerRadius(40)
                        
                        
                    }
                    
                    VStack{
                        Button(action: {}) {
                            Text("SIGN UP")
                                .font(.title)
                                .foregroundColor(Color.white)
                                .padding()
                                .frame(width: 400, height: 50)
                            
                            
                        }.background(Color("11"))
                            .cornerRadius(40)
                        
                        
                        
                        HStack{
                            Text ("Don't have an account?")
                            Button(action: {}) {
                                Text("Sign up")
                                    .font(.headline)
                            }
                            
                        }
                        
                        VStack(spacing: 100){
                            
                            Text("or sign in with")
                                .padding()
                            HStack(spacing: 50){
                                Button(action: {}) {
                                    Text("Google")
                                    
                                        .foregroundColor(Color.black)
                                        .padding()
                                        .background(Color("44"))
                                        .cornerRadius(10)
                                }
                                Button(action: {}) {
                                    Text("Fecebook")
                                    
                                        .foregroundColor(Color.black)
                                        .padding()
                                        .background(Color("55"))
                                        .cornerRadius(10)
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    
    struct SwiftUIView1_Previews: PreviewProvider {
        static var previews: some View {
            SwiftUIView1()
        }
    }
}
