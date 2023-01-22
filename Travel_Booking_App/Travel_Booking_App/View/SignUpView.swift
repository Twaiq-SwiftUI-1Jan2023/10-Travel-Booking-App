//
//  SignUpView.swift
//  Travel_Booking_App
//
//  Created by Raneem AlRashoud on 28/06/1444 AH.
//

import SwiftUI

struct SignUpView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.6702727675, green: 0.7386049628, blue: 0.7854616046, alpha: 1)), Color(#colorLiteral(red: 0.9962391257, green: 0.8958832622, blue: 0.8005118966, alpha: 1))]), startPoint: .top, endPoint: .bottom)
            
            LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.2299459577, green: 0.6377876401, blue: 0.7500101328, alpha: 1)).opacity(0.6), Color(#colorLiteral(red: 0.99701792, green: 0.8917155862, blue: 0.8008757234, alpha: 1)).opacity(0.3)]), startPoint: .topLeading, endPoint: .bottomTrailing)
            
            VStack {
                
                SignUpContentView()
                
            }
            
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct SignUpContentView: View {
    var body: some View {
        
        HStack {
            
            Button (action: {}, label: {
                Image (systemName: "arrow.left")
                
                
                Spacer()
                
                Text("Register New Account")
                    .padding(.trailing, 100)
                
            })
        }      .foregroundColor(.white)
            .font(.title2)
            .padding()
            .padding(.top, 50)
        
        Spacer()
        
        
        ZStack(alignment: .topLeading) {
            Color.white.opacity(0.25)
                .frame(width: 420, height: 700)
                .clipShape(RoundedRectangle(cornerRadius: 60, style: .continuous))
            
            HStack {
                Image ("travel-logo4444")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 150)
            }
            .padding(.leading, 150)
            .padding(.top, -70)
            
            
            
            //fields view
            HStack {
                SignUpFieldsView(email: "example@gmail.com",password: "*****************")
            }
            .padding()
            .padding(.top, 20)
            
        }
        .padding(.top)
    }
    
}

struct SignUpFieldsView: View {
    @State var email: String = ""
    @State var password: String = ""
    @State private var isSecured: Bool = true
    
    var body: some View {
        
        VStack{
            HStack{
                Text("Enter Email")
                
                Spacer()
            }
            .padding(.bottom)

            HStack  {
            
                Image(systemName: "envelope")
                    .padding(.leading, -20)
                
                
                TextField("ِYour Email", text: self.$email)
                    .autocapitalization(.none)
                
                
                
                
            }   .padding(.vertical)
                .padding(.horizontal,40)
                .overlay(
                    RoundedRectangle(cornerRadius: 16)
                        .stroke(.secondary, lineWidth: 0.5)
                )
            
         
            HStack{
                Text(" Password")
                
                Spacer()
            } .padding(.top, 30)
                .padding(.bottom)

            HStack  {
                Image(systemName: "lock")
                    .padding(.leading, -20)
                
                
                TextField("ِYour Password", text: self.$password)
                    .autocapitalization(.none)
                
                Button(action: {
                    isSecured.toggle()
                }) {
                    Image(systemName: self.isSecured ? "eye.slash" : "eye")
                }
                
                
            }   .padding(.vertical)
                .padding(.horizontal,40)
                .overlay(
                    RoundedRectangle(cornerRadius: 16)
                        .stroke(.secondary, lineWidth: 0.5)
                )
            
            //confirm password
            
            HStack{
                Text("Confirm Password")
                
                Spacer()
            } .padding(.top, 30)
                .padding(.bottom)

            HStack  {
                Image(systemName: "lock")
                    .padding(.leading, -20)
                
                
                TextField("ِYour Password", text: self.$password)
                    .autocapitalization(.none)
                
                Button(action: {
                    isSecured.toggle()
                }) {
                    Image(systemName: self.isSecured ? "eye.slash" : "eye")
                }
                
                
            }   .padding(.vertical)
                .padding(.horizontal,40)
                .overlay(
                    RoundedRectangle(cornerRadius: 16)
                        .stroke(.secondary, lineWidth: 0.5)
                )
         
            
            Button(action: {}){
                Text("Sign Up")
                    .foregroundColor(Color.white)
                    .padding(.vertical, 20)
                    .padding(.horizontal,100)
                    .background(Color("lightBlue"))
                    .clipShape(Capsule())
                    .shadow(color: Color.gray.opacity(0.1), radius:5 , x: 0, y: 5)
            }

        .padding(.horizontal)
        .padding(.top,30)
            
            HStack {
                Text("Already have an account?")
                + Text("  Sign In")
                    .foregroundColor(Color("lightBlue"))
                .bold()
            }.padding()
            
            
            VStack {
                Text("Or sign up with")
                    
                
                HStack {
                    HStack {
                        Button(action: {}){
                            
                            HStack(spacing: 10) {
                     
                           
                                
                               Image("googleIcon")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 25, height: 25)
                
                                
                                Text("Google")
                                    .foregroundColor(Color.secondary)
                                    .padding(.vertical)
             
        
                                
                            }.padding(.vertical, 2)
                                .padding(.horizontal,25)
                                .background(.white)
                                .cornerRadius(15)
                                .clipShape(Capsule())
             
                       
                        }.padding(.trailing)
                    }

       
    
                    
                    HStack {
                        Button(action: {}){
                            
                            HStack(spacing: 10) {

                               Image("facebookIcon")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 25, height: 25)
                
                                
                                Text("Facebook")
                                    .foregroundColor(.white)
                                    .padding(.vertical)
                                  
                                
                            }
                                .padding(.vertical, 2)
                                    .padding(.horizontal,20)
                                    .background(Color("facebookBtn"))
                                    .cornerRadius(15)
                                    .clipShape(Capsule())
                              
                             
                              
                       
                        }.padding(.trailing)
                    }

    
                    
                }
            }
            .padding(.top)
            
            
        }
        .foregroundColor(Color.secondary)
        .padding(.horizontal)
        .padding(.top)
    }
    
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
