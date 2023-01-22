//
//  ContentView.swift
//  bookingApp
//
//  Created by Sara Alahmdi on 26/06/1444 AH.
//

import SwiftUI

struct ContentView: View {
    @State private var UserName = ""
    @State private var password = ""
    var body: some View {
        
        ZStack {
            Image("tp")
                .resizable()
                .ignoresSafeArea()
            HStack {
                Image(systemName: "chevron.backward")
                    .foregroundColor(Color.black)
                    .padding(.leading, -140.0)
                Text("Sign In")
                    .font(.headline)
                    .foregroundColor(Color.black)
                    .multilineTextAlignment(.center)
                    .lineLimit(3)
                    .padding(.leading, -10.0)
            }
            .padding(.top, -350.0)
            ZStack  {
                RoundedRectangle(cornerRadius: 40)
                    .fill(.white)
                    .frame(height: 550.0)
                    .opacity(0.5)
                    .frame(width: 370.0, height: 600.0, alignment: .bottom)
                Image("tr")
                    .resizable()
                    .frame(width: 80, height: 60)
                    .offset(x:8 ,y: -250)
                VStack {
                    
                    TextField("UserName", text: $UserName)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.17))
                        .cornerRadius(10)
                    
                    SecureField("Password", text: $password)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.17))
                        .cornerRadius(10)
                    
                   
                    Button("Login") {
                    }
                    .foregroundColor(.black)
                    .frame(width: 300, height: 50)
                    .background(Color("bl"))
                    .cornerRadius(10)
                    .opacity(1.0)
                    .shadow(radius: 10)
                    
                    
                    HStack {
                        Text("Don't have an account?")
                        Button(action: {}) {
                            Text("Sign In")
                                .font(.headline)
                        }
                    }
                    
                    Text("or sign in with")
                    HStack (spacing:50) {
                        Button(action: {}) {
                            Text("Google")
                            
                        }
                        Button(action: {}){
                            Text("FaceBook")
                        }
                    }
                    
                }
            }
            .padding()
        }
        
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
