//
//  SignInView.swift
//  TravelBooking
//
//  Created by Abdulkarim Koshak on 1/21/23.
//

import SwiftUI

struct SignUpView: View {
    
    var body: some View {
        ZStack {
            CustomColor.background.ignoresSafeArea(.all)
            
            HStack {
                Image(systemName: "arrowshape.left.fill")
                    .foregroundColor(Color.white)
                    .offset(x: -40, y: 0)
                
                Text("Register New Account")
                    .font(Font.custom("Gilroy-Light", size: 20))
                    .fontWeight(.medium)
                    .foregroundColor(Color.white)
            }
            .offset(x: -20, y: -370)
            
            RoundedRectangle(cornerRadius: 50)
                .frame(height: 750.0)
                .foregroundColor(CustomColor.menu)
                .offset(x: 0, y: 100)
                .overlay {
                    Circle()
                        .frame(width: 100, height: 100)
                        .foregroundColor(.white)
                        .offset(x: 0, y: -275)
                        .overlay {
                            Image("airplane")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 75, height: 75)
                                .offset(x: 0, y: -275)
                        }
                    
                    VStack {
                        Text("Enter Email")
                            .font(Font.custom("Poppins-Regular", size: 15))
                            .foregroundColor(Color.gray)
                            .offset(x: -130, y: -110)
                        
                        SecureInputBox(text: "example@gmail.com", isTextField: true)
                            .frame(width: 350.0, height: 50.0)
                            .offset(x: 0, y: -105)
                        
                        Text("Password")
                            .font(Font.custom("Poppins-Regular", size: 15))
                            .foregroundColor(Color.gray)
                            .offset(x: -130, y: -90)
                        
                        SecureInputBox(text: "Password", isTextField: false)
                            .frame(width: 350.0, height: 50.0)
                            .offset(x: 0, y: -85)
                        
                        Text("Confirm Password")
                            .font(Font.custom("Poppins-Regular", size: 15))
                            .foregroundColor(Color.gray)
                            .offset(x: -100, y: -60)
                        
                        SecureInputBox(text: "Confirm Password", isTextField: false)
                            .frame(width: 350.0, height: 50.0)
                            .offset(x: 0, y: -60)
                        
                        Button {
                            
                        } label: {
                            RoundedRectangle(cornerRadius: 16)
                                .foregroundColor(CustomColor.background)
                                .frame(width: 350, height: 70)
                                .overlay {
                                    Text("Sign Up")
                                        .font(Font.custom("Gilroy-Light", size: 20))
                                        .fontWeight(.bold)
                                        .foregroundColor(Color.white)
                                }
                        }
                        .offset(x: 0, y: -45)
                        
                        HStack(spacing: 5) {
                            Text("Already have account?")
                                .font(Font.custom("Poppins-Regular", size: 15))
                                .foregroundColor(Color.gray)
                            
                            Button("Sign In") {
                                
                            }
                            .foregroundColor(CustomColor.background)
                            .font(Font.custom("Poppins-SemiBold", size: 15))
                        }
                        .offset(x: 0, y: -40)
                        
                        VStack {
                            Text("Or Sign in with")
                                .font(Font.custom("Poppins-Medium", size: 15))
                                .foregroundColor(Color.black)
                            
                            HStack(spacing: 30) {
                                SocialRectangle(name: "Google", icon: "google-icon", boxColor: .white, textColor: .black)
                                
                                SocialRectangle(name: "Facebook", icon: "facebook-icon", boxColor: CustomColor.facebook, textColor: .white)
                            }
                        }
                        .offset(x: 0, y: 10)
                    }
                    .offset(x: 0, y: 140)
                }
        }
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
