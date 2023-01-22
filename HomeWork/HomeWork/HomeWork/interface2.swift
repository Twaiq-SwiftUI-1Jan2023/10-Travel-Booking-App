//
//  interface2.swift
//  HomeWork
//
//  Created by Judy Alshahrani on 27/06/1444 AH.
//

import SwiftUI

struct interface2: View {
   @State var Email=""
   @State var Password=""
   var body: some View {
      VStack{  Text(" Register New Account")
            .font(.largeTitle)
         ZStack{
            
            
            Color.yellow
               .opacity(0.5)
               .frame(width: 500,height: 990)
            Button{}
         label: {
            Image(systemName: "arrow.backward.square")
               .offset(x:-150,y:-400)
               .font(.system(size: 30))
               .foregroundColor(.blue)
              .padding()
      }
            //HStack{
            
            Rectangle()
               .frame(width:390,height: 740)
               .foregroundColor(Color.white.opacity(0.7))
               .cornerRadius(60)
               .frame(width:500,height: 500)
            
            Image("m1")
               .clipShape( Circle().size(width: 70,height: 70))
               .offset(x:70,y:-290)
               .foregroundColor(Color.black.opacity(0.1))
            
            
            // }//H1
            VStack(alignment: .leading,spacing: 5){
               //            Text(" Register New Account")
               //               .font(.largeTitle)
               //              // .bold()
               
               Text(" Enter Email : ")
                  .font(.system(size:20 ))
                  .font(.title)
                  .foregroundColor(Color.black.opacity(0.4))
                  .padding()
               HStack{
                  Image(systemName: "envelope.open").foregroundColor(.black).font(.title)
                  TextField(" example@gmail.com :", text: $Email)
                     .font(.system(size:22 ))
                     .font(.headline)
                     .padding()
               }
               .padding()
               .frame(width:379.0,height: 70)
               .background(Color.white)
               .opacity(0.7)
               .cornerRadius(900)
               // .padding()
               
               
               Text(" Enter Password : ")
                  .font(.system(size:20 ))
                  .font(.title)
               
                  .foregroundColor(Color.black.opacity(0.3))
                  .padding()
               HStack{
                  Image(systemName: "lock").foregroundColor(.black).font(.title)
                  SecureField("...................", text: $Password)
                     .font(.system(size:50 ))
                  .font(.headline)}
               .padding()
               .frame(width:380,height: 70)
               .background(Color.white)
               .opacity(0.7)
               .cornerRadius(900)
               
               
               Text(" Confirm Password : ")
                  .font(.system(size:20 ))
                  .font(.title)
               
                  .foregroundColor(Color.black.opacity(0.3))
                  .padding()
               HStack{
                  Image(systemName: "lock").foregroundColor(.black).font(.title)
                  SecureField("...................", text: $Password)
                     .font(.system(size:50 ))
                  .font(.headline)}
               .padding()
               .frame(width:380,height: 70)
               .background(Color.white)
               .opacity(0.7)
               .cornerRadius(900)
               
               HStack{
                  
                  Button("Sign Up"){}
                  
                     .frame(width:280,height: 30)
                     .padding()
                     .background(Color.yellow.opacity(0.5).cornerRadius(20))
                     .foregroundColor(.black)
                     .font(.headline)
                  
                  
               }
               .padding()
               VStack(alignment:.center,spacing: 10){
                  Button{} label:{ Text("Already have  account ? Singn In")}
               }
               
               .padding()
               
               HStack{
                  
                  HStack{
                     Button("Google"){}
                     
                        .frame(width:80,height: 30)
                        .padding()
                        .background(Color.white.opacity(0.5).cornerRadius(20))
                        .foregroundColor(.black)
                        .font(.headline)
                        .padding()
                  }
                  
                  .padding()
                  
                  HStack{
                     
                     Button("facebook"){}
                     
                        .frame(width:80,height: 30)
                        .padding()
                        .background(Color.blue.opacity(3.50).cornerRadius(20))
                        .foregroundColor(.white)
                        .font(.headline)
                     
                        .padding()
                  }
                  .padding()
                  .padding()
                  
               }
               
               
            }//v1
         }//Z1
      }
      
   }
}
struct interface2_Previews: PreviewProvider {
    static var previews: some View {
        interface2()
    }
}
