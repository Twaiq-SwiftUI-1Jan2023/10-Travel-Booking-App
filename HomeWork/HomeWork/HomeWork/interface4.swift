//
//  interface4.swift
//  HomeWork
//
//  Created by Judy Alshahrani on 28/06/1444 AH.
//

import SwiftUI

struct interface4: View {
   
   var body: some View {
      
      ZStack{
         
         Color.brown
            .opacity(0.6)
            .frame(width: 500,height: 900)
         Button{}
      label: {
         Image(systemName: "arrow.backward.square")
            .offset(x:-150,y:-380)
            .font(.system(size: 30))
            .foregroundColor(.black)
            .padding()
      }
         
         Text("Add Reviwe")
            .font(.largeTitle)
            .offset(x:-10,y:-350)
            .bold()
         ZStack{
            
            Rectangle()
            //.offset(x:10,y:150)
               .frame(width:380,height: 640)
               .foregroundColor(Color.white.opacity(0.7))
               .cornerRadius(60)
            // .frame(width:500,height: 50)
           
            HStack{
               
               Button("Submit your Review"){}
               
                  .frame(width:280,height: 30)
               
                  .padding()
                  .background(Color.yellow.opacity(0.5).cornerRadius(20))
                  .foregroundColor(.black)
                  .font(.headline)
                  .offset(x:-5,y:280)
               
            }
            
            ZStack{
               VStack{
               Text("Rate your stay")
                  .font(.largeTitle)
                  .offset(x:-10,y:-590)
                  .bold()
                  ZStack(alignment: .top){
                     Text("Write your stay experie here")
                        .font(.headline)
                        .foregroundColor(Color.secondary)
                     Rectangle()
                     // .offset(x:-300,y:-550)
                        .frame(width:350,height: 380)
                        .foregroundColor(Color.black.opacity(0.1))
//                        .cornerRadius(30)
//                     Text("Rate your stay")
//                        .font(.largeTitle)
//                        .offset(x:-10,y:-590)
//                        .bold()
                  }
                  
               Text(" your Review :")
                  .font(.largeTitle)
                  .offset(x:-70,y:-450)
                  
//                  ZStack{
//                     ForEach(0..<5){ index in
//                        Image(systemName: "star.fill")
//                           .resizable()
//                        .frame(width:30,height: 30)}
//                }
               
            }
               
         }
        
      }
   }//z1
 
         
         
     
}//view
}//struct

struct interface4_Previews: PreviewProvider {
 
    static var previews: some View {
        interface4()
       
      
    }
}
