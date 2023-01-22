//
//  interface6.swift
//  HomeWork
//
//  Created by Judy Alshahrani on 29/06/1444 AH.
//

import SwiftUI

struct interface6: View {
//   var offers = ["m1","m2","m4"]
//   var hotels = ["m1","m2","m4"]
//   @State var search = ""
    var body: some View {
       ZStack{
          Color.yellow
             .opacity(0.4)
             .frame(width: 500,height: 900)
          HStack{
             Image("m1")
                .resizable()
                .scaledToFit()
                .padding(.top,-480)
                .padding(.horizontal,40)
             
          }
          
          //          Rectangle()
          //             .frame(width: 400,height: 100)
          //          padding(.bottom,-200)
          //             .cornerRadius(50)
          //             .foregroundColor(Color.brown)
          //             .offset(y:150)
          
          
          ‪
          
          
          
       
       }//z
    }//view
}//struct

struct interface6_Previews: PreviewProvider {
    static var previews: some View {
        interface6()
    }
}
