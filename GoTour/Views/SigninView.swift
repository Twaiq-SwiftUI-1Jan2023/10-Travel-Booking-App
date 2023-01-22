//
//  SigninView.swift
//  GoTour
//
//  Created by Amer Alyusuf on 20/01/2023.
//

import SwiftUI

struct SigninView: View {
    
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var showPass: Bool = false
    @State private var signUp: Bool = false
    
    var body: some View {
        NavigationView {
            ZStack {
                Colors.topaz
                    .ignoresSafeArea(.all)
                VStack(spacing: 0) {
                    // MARK: - Title Bar
                    ZStack {
                        HStack {
                            Image(systemName: "arrow.left")
                                .font(.title3)
                                .foregroundColor(Colors.white)
                                .padding(.leading)
                            
                            Spacer()
                        }
                        Text(signUp ? "Register New Account" : "Sign In")
                            .foregroundColor(Colors.white)
                            .font(.title3)
                            .bold()
                    }
                    .padding(.top, 10)
                    
                    // MARK: - White Background Section
                    Spacer()
                    ZStack {
                        VStack(spacing: 0) {
                            // MARK: - Circle Image
                            Circle()
                                .frame(width: UIScreen.main.bounds.width/3.3)
                                .foregroundColor(Colors.white)
                                .overlay {
                                    Images.goTour
                                        .resizable()
                                        .scaledToFit()
                                }
                                .padding(.top, -UIScreen.main.bounds.width/6.6)
                            // MARK: - Text Fields
                            HStack {
                                Text("Enter Email")
                                    .font(.title3)
                                    .foregroundColor(Colors.grey)
                                Spacer()
                            }
                            .padding()
                            
                            HStack {
                                Image(systemName: "envelope")
                                    .padding(.leading, 8)
                                
                                TextField("example@example.com", text: $email)
                                    .foregroundColor(Colors.black)
                                    .padding(.vertical, 8)
                            }
                            .background {
                                RoundedRectangle(cornerRadius: 8)
                                    .foregroundColor(Colors.white)
                            }
                            .padding(.horizontal)
                            
                            PasswordField(password: $password, showPass: $showPass, text: "Password")
                                .padding(.horizontal)
                            
                            if signUp {
                                PasswordField(password: $password, showPass: $showPass, text: "Confirm Password")
                                    .padding(.horizontal)
                            }
                            
                            // MARK: - Navigation
                            NavigationLink(destination: MainTabView().navigationBarBackButtonHidden(true)) {
                                ZStack {
                                    RoundedRectangle(cornerRadius: 20)
                                        .foregroundColor(Colors.topaz)
                                        .frame(height: 65)
                                        .padding(.horizontal, 25)
                                    
                                    Text(signUp ? "Sign UP" : "Sign In")
                                        .foregroundColor(Colors.white)
                                        .font(.title3)
                                        .bold()
                                }
                            }
                            .padding(.top)

                            HStack {
                                Text("Don't have an accout?")
                                    .foregroundColor(Colors.grey)
                                    .font(.body)
                                Button {
                                    signUp.toggle()
                                } label: {
                                    Text(signUp ? "Sign In" : "Sign Up")
                                        .foregroundColor(Colors.topaz)
                                        .font(.body)
                                }
                            }
                            .padding()
                            
                            Spacer()
                            
                            Text("Or Sign in with")
                                .foregroundColor(Colors.black)
                                .font(.body)
                            
                            // MARK: - Bottom Buttons / Navigation
                            HStack(spacing: 20) {
                                NavigationLink(destination: MainTabView().navigationBarBackButtonHidden(true)) {
                                    ZStack {
                                        RoundedRectangle(cornerRadius: 20)
                                            .foregroundColor(Colors.white)
                                            
                                        HStack(spacing: 0) {
                                            Images.google
                                                .resizable()
                                                .scaledToFit()
                                                .padding(20)
                                            
                                            Text("Google")
                                                .foregroundColor(Colors.black)
                                                .font(.body)
                                        }
                                    }
                                    .frame(height: 65)
                                }
                                NavigationLink(destination: MainTabView().navigationBarBackButtonHidden(true)) {
                                    ZStack {
                                        RoundedRectangle(cornerRadius: 20)
                                            .foregroundColor(Colors.facebook)
                                        
                                        Images.facebook
                                            .resizable()
                                            .scaledToFit()
                                            .padding(20)
                                    }
                                    .frame(height: 65)
                                }
                            }
                            .padding([.horizontal, .top])
                        }
                    }
                    .frame(height: UIScreen.main.bounds.height - 250)
                    .background {
                        RoundedRectangle(cornerRadius: 35)
                            .foregroundColor(Colors.paleGrey)
                            .ignoresSafeArea(.all)
                    }
                }
            }
        }
    }
}

struct SigninView_Previews: PreviewProvider {
    static var previews: some View {
        SigninView()
    }
}
