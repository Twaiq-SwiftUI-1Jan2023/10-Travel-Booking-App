//
//  interface5.swift
//  HomeWork
//
//  Created by Judy Alshahrani on 29/06/1444 AH.
//

import SwiftUI

struct interface5: View {
    var body: some View {
       // Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
       ZStack{
          Button{}
       label: {
          Image(systemName: "arrow.backward.square")
             .offset(x:150,y:-340)
             .font(.system(size: 33))
             .foregroundColor(.blue)
             .padding()
       }
          Color("11")
             .ignoresSafeArea()
          Rectangle()
              .cornerRadius(70)
              .foregroundColor(Color.white)
              .frame(width: 400 , height: 750)
              .offset(y:100)
          VStack{
             Text("Let's Explore              the World!")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(Color.white)
                .padding(.leading)
             
             HStack {
                Image(systemName: "mappin.and.ellipse")
                Text("You Are In Sauth Africa")}
             .padding(.leading, -160.0)
            .foregroundColor(Color.white)
         Text("")
            Spacer()
             HStack(spacing: 100) {
                 
            Button {
                     
            } label: {
                 
            Image(systemName: "figure.walk")
            .foregroundColor(Color.purple)
            .font(.system(size:50))
                         
                     
            Button {
                         
               } label: {
            Image(systemName: "house.fill")
         .foregroundColor(Color.pink)
         .font(.system(size:50))
                             
                         
         Button {
                             
         } label: {
         Image(systemName: "airplane.circle")
         .foregroundColor(Color.orange)
         .font(.system(size:50))
                                 
         Button {
                                 
         } label: {
      Image(systemName: "dollarsign.circle")
      .foregroundColor(Color.blue)
      .font(.system(size:50))
                                 
               }
            }
      }
      }
                 
   }
             HStack(spacing: 40){
            Text("trip")
            .foregroundColor(Color.gray)
            Text("Hotels")
         .foregroundColor(Color.gray)
         Text("Flit")
         .foregroundColor(Color.gray)
         Text("offer")
.foregroundColor(Color.gray)
                                
      }
             Text("Popular Ofer")
         .font(.title2)
      .fontWeight(.semibold)
      .padding(.leading, -180.0)
      ScrollView (.horizontal, showsIndicators: false) {
      HStack {
      ForEach(0..<5) { index in
      Rectangle()
           // .background(Color("11"))
            .fill(Color.secondary.opacity(0.2))
      .frame(width: 100, height: 100)
      .cornerRadius(20)
      .shadow(radius: 10)
   }
   }
   }
                           
   Text("Hotel Near You")
   .font(.title2)
   .fontWeight(.semibold)
   .padding(.leading, -180.0)
   ScrollView (.horizontal, showsIndicators: false) {
   HStack {
   ForEach(0..<5) { index in
   Rectangle()
         .fill(Color.secondary.opacity(0.2))
   .frame(width: 190, height: 190)
   .cornerRadius(20)
   .shadow(radius: 10)
}
}
   Spacer()
             
}
                            
}

}

             
}
}
    
struct interface5_Previews: PreviewProvider {
    static var previews: some View {
        interface5()
    }
}
