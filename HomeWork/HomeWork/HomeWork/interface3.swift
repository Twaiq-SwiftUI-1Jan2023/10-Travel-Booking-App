//
//  interface3.swift
//  HomeWork
//
//  Created by Judy Alshahrani on 27/06/1444 AH.
//

import SwiftUI


struct interface3: View {
   @State var selections :String=""
   let filterOptions:[String]=["List","Completed","Cancelled"]
     var body: some View {
      
      ZStack{
         
         TabView{
            Text("")
               .tabItem{
                  Image(systemName: "house.fill")
                  Text("Home")
               }
            Text("Search")
               .tabItem{
                  Image(systemName: "magnifyingglass")
                  Text("Search")
               }
            Text("person")
               .tabItem{
                  Image(systemName: "person")
                  Text("person")
               }
            Text("HomeTab")
               .tabItem{
                  Image(systemName: "globe")
                  Text("Browse")
               }
            
         }
     // Text("sing in")
         Color.green
               .opacity(0.1)
               .frame(width: 500,height: 900)
         Text("App")
         .offset(x:-10,y:-350)
         .bold()
            Button{}
         label: {
            Image(systemName: "arrow.backward.square")
               .offset(x:-140,y:-340)
               .font(.system(size: 33))
               .foregroundColor(.blue)
               .padding()
         }
            VStack{
               Picker("CHOOSE",selection:$selections){
                  ForEach(filterOptions, id: \.self){ index in
                     
                     Text(index) }
               }
               .pickerStyle(.segmented)
               .offset(x:5,y:-280)
               //.background(Color.black)
            }
            .padding()
            
            VStack(alignment: .leading,spacing: 20){
               ScrollView{
                  VStack{
                     
                     ForEach(0..<8){ index in
                        
                        ScrollView(.vertical,showsIndicators:false,
                                   content:{
                           
                           HStack{
                              
                              RoundedRectangle(cornerRadius: 25.0)
                                 .fill(Color.secondary.opacity(0.2))
                                 .frame(width: 320,height: 150)
                                 .padding()
                           }//H
                           
                        })//content
                        
                     }//FOR
                     
                  }//v
                  
               }
               .offset(x:-15,y:240)
            }//v2
            
         }//z1
         
         //      VStack{
         //         TabView{
         //            Text("HomeTab")
         //               .tabItem{
         //                  Image(systemName: "house.fill")
         //                  Text("Home")
         //               }
         //            Text("Search")
         //               .tabItem{
         //                  Image(systemName: "magnifyingglass")
         //                  Text("Search")
         //               }
         //            Text("person")
         //               .tabItem{
         //                  Image(systemName: "person")
         //                  Text("person")
         //               }
         //            Text("HomeTab")
         //               .tabItem{
         //                  Image(systemName: "globe")
         //                  Text("Browse")
         //               }
         //
         //         }
         //      }
    //  }
      }//view
   }//struct

struct interface3_Previews: PreviewProvider {
  
    static var previews: some View {
        interface3()
    }
}
// HStack{
//          picker(
//            selection:$selections,
//            Label:Text("Picker"),
//            content :{
//               ForEach(filterOptions.indices){   index in
//                  Text(filterOptions[index])
//                  .tag(filterOptions[index])}
//            })
//          .pickerStyle(.segmentedpickerStyle())
 //}
