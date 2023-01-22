//
//  interface1.swift
//  HomeWork
//
//  Created by Judy Alshahrani on 27/06/1444 AH.
//

import SwiftUI

struct interface1: View {
   @State var Email=""
   @State var Password=""
    var body: some View {
       
      ZStack{
          
          Color.yellow
         .opacity(0.4)
         .frame(width: 500,height: 900)
         Button{}
      label: {
         Image(systemName: "arrow.backward.square")
            .offset(x:-150,y:-380)
            .font(.system(size: 30))
            .foregroundColor(.blue)
           .padding()
   }
           //  HStack{
               Rectangle()
               .frame(width:380,height: 650)
              
               .foregroundColor(Color.black.opacity(0.1))
               .cornerRadius(60)
             .frame(width:500,height: 650)
         Image("m1")
         .clipShape( Circle().size(width: 70,height: 70))
         .offset(x:70,y:-240)
         .foregroundColor(Color.black.opacity(0.1))
         
        
              //}//H1
            
          VStack(alignment: .leading,spacing: 10){
                       
             Text(" Sign In")
                .font(.largeTitle)
                .bold()
                .padding()
             
             Text(" Enter Email : ")
                .font(.system(size:20 ))
                .font(.title)
                .foregroundColor(Color.black.opacity(0.4))
           
             HStack{
                Image(systemName: "envelope.open").foregroundColor(.black).font(.title)
                TextField(" example@gmail.com :", text: $Email)
                   .font(.system(size:22 ))
                   .font(.headline) }
             .padding()
             .frame(width:379.0,height: 70)
             .background(Color.white)
             .opacity(0.7)
             .cornerRadius(900)
         
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
             
             HStack{
                
                Button("Sign In"){}
                
                   .frame(width:280,height: 30)
                   .padding()
                   .background(Color.yellow.opacity(0.5).cornerRadius(20))
                   .foregroundColor(.black)
                   .font(.headline)
                
             }
             .padding()
             VStack(alignment:.center,spacing: 10){
             Button{} label:{ Text("Dont have an account ? Singn UP")}
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
//            HStack{
//
//                ZStack{
//                   Button{}
//               label:{
//
//                  Image("m8")
//
//                     .frame(width:20,height: 30)
//                     .padding()
//
//               }
//               .padding()
//
//                      .frame(width:80,height: 30)
//                      .padding()
//                      .background(Color.white.opacity(0.5).cornerRadius(20))
//                      .foregroundColor(.black)
//                      .font(.headline)
//                   .padding()
//
//                }

             
             
         }//v1
       }//Z1
       
      
    }//view
}//struct

struct interface1_Previews: PreviewProvider {
    static var previews: some View {
        interface1()
    }
}
/**
 
 HStack{
     Button{}
  label: {
     Image(systemName: "arrow.backward.square")
        .font(.system(size: 30))
        .foregroundColor(.blue)
        //.padding()
  }
 */

//          VStack{
//             Text(" Sign In")
//                .font(.largeTitle)
//                .bold()
//                .padding()
//          }
//        Image("m1")
//       .ignoresSafeArea()
 // .resizable()
  //envelope.open
//------------------------------------------
//                  ZStack{
//                     Image(systemName: "m1")
//                        .resizable()
//                        .frame(width: 10,height: 10)
//                        .clipShape(Circle())
//                        .shadow(color:.blue,radius:5,x: 5,y: 5)
//                        .opacity(0.3)
//                       .aspectRatio(contentMode:.fill)
//
//                  }
//------------------------------------------

//             VStack(alignment:.center,spacing: 30){
//             Button{} label:{ Text("or Singn In with")}
//          }
//------------------------------------------
//HStack{
//
//    ZStack{
//       Button{}
//   label:{
//
//      Image("m8")
//
//         .frame(width:20,height: 30)
//         .padding()
//
//   }
//   .padding()
//      HStack{
//          Button{}
//       label:{
//
//          Image("m9")
//
//             .frame(width:20,height: 30)
//             .padding()
//       }
//       }
