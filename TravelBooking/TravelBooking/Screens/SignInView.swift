//
//  SignInView.swift
//  TravelBooking
//
//  Created by Abdulkarim Koshak on 1/21/23.
//

import SwiftUI

struct SignInView: View {
    
    var body: some View {
        ZStack {
            CustomColor.background.ignoresSafeArea(.all)
            
            HStack {
                Image(systemName: "arrowshape.left.fill")
                    .foregroundColor(Color.white)
                
                Text("Sign In")
                    .font(Font.custom("Gilroy-Light", size: 20))
                    .fontWeight(.medium)
                    .foregroundColor(Color.white)
                    .padding(.horizontal, 110)
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
                            .offset(x: -130, y: -85)
                        
                        SecureInputBox(text: "Password", isTextField: false)
                            .frame(width: 350.0, height: 50.0)
                            .offset(x: 0, y: -80)
                        
                        Button {
                            
                        } label: {
                            RoundedRectangle(cornerRadius: 16)
                                .foregroundColor(CustomColor.background)
                                .frame(width: 350, height: 70)
                                .overlay {
                                    Text("Sign In")
                                        .font(Font.custom("Gilroy-Light", size: 20))
                                        .fontWeight(.bold)
                                        .foregroundColor(Color.white)
                                }
                        }
                        .offset(x: 0, y: -50)
                        
                        HStack(spacing: 5) {
                            Text("Don't have an account?")
                                .font(Font.custom("Poppins-Regular", size: 15))
                                .foregroundColor(Color.gray)
                            
                            Button("Sign Up") {
                                
                            }
                            .foregroundColor(CustomColor.background)
                            .font(Font.custom("Poppins-SemiBold", size: 15))
                        }
                        .offset(x: 0, y: -35)
                        
                        VStack {
                            Text("Or Sign in with")
                                .font(Font.custom("Poppins-Medium", size: 15))
                                .foregroundColor(Color.black)
                            
                            HStack(spacing: 30) {
                                SocialRectangle(name: "Google", icon: "google-icon", boxColor: .white, textColor: .black)
                                
                                SocialRectangle(name: "Facebook", icon: "facebook-icon", boxColor: CustomColor.facebook, textColor: .white)
                            }
                        }
                        .offset(x: 0, y: 95)
                    }
                    .offset(x: 0, y: 95)
                }
        }
    }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}
