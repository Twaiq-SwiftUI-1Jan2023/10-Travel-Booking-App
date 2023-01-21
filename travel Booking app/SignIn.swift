//
//  SignIn.swift
//  travel Booking app
//
//  Created by Abdullah Aloufi on 28/06/1444 AH.
//

import SwiftUI

struct SignIn: View {
    @State var name : String = ""
    @State var pass : String = ""
    var body: some View {
        ZStack{
            
            Color(#colorLiteral(red: 0.980537951, green: 0.5309188366, blue: 0.023794543, alpha: 1))
                .ignoresSafeArea()
//            Image(systemName: "person")
//                .foregroundColor(.black)
//                .zIndex(4)
//                .frame(alignment: .top)
            VStack{
                Spacer(minLength: 50)
//                HStack{
//                    Image(systemName: "arrow.left")
//                        .padding()
//                    Spacer()
//                    Text("Sign In")
//                        .padding()
//                    Spacer()
//                    Text("")
//                    Spacer()
//
//                }
                Spacer()
                Spacer()
                Text("")
                ZStack {
                    
                    
                    NavigationView {
                        VStack(){
                            HStack {
                                Text("User Name:")
                                    .padding(.top)
                                    .padding(.horizontal)
                                Spacer()
                            }
                            
                            HStack {
                                HStack {
                                    Image(systemName: "envelope.fill")
                                    TextField("UserName", text: $name)
                                }
                                .padding()
                                .border(.gray)
                                
                            }.padding(.horizontal)
                            
                            
                            
                            HStack {
                                Text("Password:")
                                    .padding(.horizontal)
                                    .padding(.top)
                                Spacer()
                            }
                            
                            HStack {
                                HStack {
                                    Image(systemName: "lock")
                                    TextField("Password", text: $pass)
                                }
                                .padding()
                                .border(.gray)
                                
                            }
                            .padding(.horizontal)
                            .padding(.bottom)
                            
                            
                            Button{
                                
                            }label: {
                                Text("Sgin in")
                                    .foregroundColor(Color.black)
                                    .padding()
                            }
                            .frame(width: 300)
                            .background(.gray)
                            .cornerRadius(16)
                            .overlay(
                                
                                RoundedRectangle(cornerRadius: 16)
                                    .stroke(.black, lineWidth: 4)
                            )
                            .padding()
                            
                            VStack {
                                HStack {
                                    Text("Dont have an account?")
                                        .font(.caption)
                                    NavigationLink(destination: SignUp().navigationBarBackButtonHidden(true)) {
                                        Text("Sign Up")
                                            .foregroundColor(.blue)
                                    }.font(.caption)
                                }
                                
                                Spacer()
                                VStack{
                                    Text("Or Sign in with:")
                                    HStack{
                                        HStack{
                                            Image("google")
                                                .resizable()
                                                .frame(width: 30 , height: 30)
                                            Text("sign in with google")
                                                .font(.caption)
                                            
                                        }
                                        .padding()
                                        .background()
                                        .cornerRadius(16)
                                        
                                        HStack{
                                            Image("facebook")
                                                .resizable()
                                                .frame(width: 30 , height: 30)
                                                .foregroundColor(.white)
                                            Text("sign in with facebook")
                                                .font(.caption)
                                                .foregroundColor(.white)
                                                .scaledToFill()
                                        }
                                        .padding()
                                        .frame(width: 170 , height: 60)
                                        
                                        .background(.blue)
                                        .cornerRadius(16)
                                    }
                                    .padding()
                                }
                            }
                            
                            
                            
                            
                        }
                        .background(Color(.systemGroupedBackground))
                    .cornerRadius(16)
                    }
                    
                }.ignoresSafeArea()
            }    }

    }
}

struct SignIn_Previews: PreviewProvider {
    static var previews: some View {
        SignIn()
    }
}
