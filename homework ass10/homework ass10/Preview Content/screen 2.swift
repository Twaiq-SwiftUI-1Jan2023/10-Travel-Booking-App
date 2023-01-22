//
//  screen 2.swift
//  homework ass10
//
//  Created by MAJEDAH on 27/06/1444 AH.
//

import SwiftUI

struct screen_2: View {
    var body: some View {
        VStack{
            HStack(spacing: 90){
                Image(systemName: "arrowshape.backward.fill")
                    .foregroundColor(Color.white)
                Text("Register New Account ")
                    .foregroundColor(Color.white)
                Spacer()
               
                }
            ZStack{
                Rectangle()
                .cornerRadius(60)
                .foregroundColor(ContentView.gray)
                .frame(width: 400 , height: 700)
                .offset(y : 50)
                Image( "pr1")
                    .resizable()
                    .frame(width: 120 , height: 120)
                    .clipShape(Circle())
                    .offset(y: -280)
                Image(systemName: "plus")
                    .foregroundColor(.white)
                    .frame(width: 25 , height: 25)
                    .background(ContentView.wall)
                    .clipShape(Circle())
                    .offset(x: 40 , y: -230)
                VStack (spacing:30){
                    Spacer()
                    Text("Enter Email")
                        .offset(x: -140)
                    HStack  {
                        Spacer()
                        Image(systemName: "envelope")
                        TextField("   your Email", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                    }
                    Text("Password")
                        .offset(x: -145)
                    HStack{
                        Spacer()
                        Image(systemName: "lock.fill")
                        TextField("    your password", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                    }
                    Text(" confirm Password")
                        .offset(x: -120)
                    HStack{
                        Spacer()
                        Image(systemName: "lock.fill")
                        TextField("    add your password again ", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                    }
                    Button {
                    
                    }label: {
                        Text("Sign in ").font(.title)
                            .foregroundColor(Color.white)
                            .padding()
                            .frame(width: 400.0, height: 50.0)
                            .background(ContentView.wall)
                            .cornerRadius(20)
                    }
                    HStack{
                        Text("already have account?")
                        Button("sign in "){
                            
                        }.font(.headline)
                    }
                    
                    VStack (spacing: 90){
                        
                        Text("or sign up with ")
                    
                   
                    HStack (spacing: 70){
                        Button{
                            
                        }label: {
                            Text("Google")
                        }
                            .foregroundColor(Color.black)
                            .padding()
                            .background()
                            .cornerRadius(10)
                        Button{
                            
                        }label: {
                            Text("facebook")
                                .foregroundColor(Color.white)
                                .padding()
                                .background(ContentView.mk)
                                .cornerRadius(10)
                        }
                        }
                    }
                }
            }
        }.background(ContentView.wall)
        
        }
           }


struct screen_2_Previews: PreviewProvider {
    static var previews: some View {
        screen_2()
    }
}
