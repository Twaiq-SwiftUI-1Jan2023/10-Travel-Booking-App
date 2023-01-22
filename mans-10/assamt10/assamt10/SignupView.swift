//
//  SignupView.swift
//  assamt10
//
//  Created by Abudulaziz on 28/06/1444 AH.
//

import SwiftUI

struct SignupView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    var body: some View {
        NavigationView{
            ZStack(alignment: .topLeading){
                VStack{
                    ZStack{
                        Ellipse()
                            .frame(width: 510, height: 478)
                            .padding(.leading, -200)
                            .foregroundColor(Color("Color2"))
                            .padding(.top, -200)
                        Ellipse()
                            .frame(width: 458, height: 420)
                            .padding(.leading, 400)
                            .foregroundColor(Color("Color1"))
                            .padding(.top, -200)
                        Text("Welcome \nBack")
                            .foregroundColor(.white)
                            .font(.system(size: 35))
                            .fontWeight(.bold)
                            .multilineTextAlignment(.leading)
                            .frame(minWidth:.pi, alignment: .leading)
                            .padding(.leading , -150)
                            
                            
                            
                        
                    }
					VStack (spacing: 30){
						VStack (spacing: 30){
							CustomTextField(placeHolder: "Email", imgeName: "envelope", bCoolor: "textColor1", tOpacity: 0.6, value: $email)
								.padding(.leading)
							CustomTextField(placeHolder: "Password", imgeName: "lock", bCoolor: "textColor1", tOpacity: 0.6, value: $password)
								.padding(.leading)
						}
						VStack (alignment: .trailing) {
							Text("Forgot Password")
								.fontWeight(.medium)
							
							Button(action: {}, label: {
								Text("SIGN IN")
								
									.fontWeight(.bold)
									.foregroundColor(.white)
									.frame(height: 58)
									.frame(minWidth: 0, maxWidth: .infinity)
									.background(Color("Color1"))
									.cornerRadius(15)
								
							})
							
						}.padding(.horizontal, 20)
						
						//                        HStack{
						//                            Button(action: {}, label: {
						//                                Image("Image11")
						//                                    .resizable()
						//                                    .frame(width: 70 , height: 70)
						//                                    .padding(.horizontal, 60)
						//                                padding(.vertical, 15)
						//                                background(Color("button-bg"))
						//                                    .cornerRadius(15)
						//                            })
						//                            Spacer()
						//                            Button(action: {}, label: {
						//                                Image("Image11")
						//                                    .resizable()
						//                                    .frame(width: 70 , height: 70)
						//                                    .padding(.horizontal, 60)
						//                                padding(.vertical, 15)
						//                                background(Color("button-bg"))
						//                                    .cornerRadius(15)
						//                            })
						//                        }
						//
						//                        .padding(.horizontal,20)
						//                    }
						//                    Spacer()
						//					ZStack{
						//						HStack{
						//							Text("Dont have an account?")
						//								.fontWeight(.bold)
						//							foregroundColor(.white)
						//								.font(.system(size: 18))
						//							Button(action: {}, label: {
						//								Text("SIGN UP")
						//
						//									.font(.system(size: 18))
						//									.foregroundColor(Color("Color1"))
						//								fontWeight(.bold)
						//
						//							})
						//						}
						//					}
						//					.frame(height: 63)
						//					.frame(minWidth: 0, maxWidth: .infinity)
						//                    .frame(minWidth: 0, maxWidth: .infinity)
						//                    .background(Color("Color2"))
						//                    .ignoresSafeArea()
					}
                }
              
            }
            
        }

    }
}

struct SignupView_Previews: PreviewProvider {
    static var previews: some View {
        SignupView()
    }
}
