//
//  MyTrip2.swift
//  Nada-TravelAssigment
//
//  Created by N on 20/01/2023.
//

import SwiftUI

struct MyTrip2: View {
    var body: some View {
        ZStack{
            Color("c1").ignoresSafeArea()
            
            
            VStack{
               
                ZStack{
                    RoundedRectangle(cornerRadius: 80)
                        .fill(Color(UIColor.secondarySystemBackground)).ignoresSafeArea()
                    VStack(spacing: 10) {
                        VStack{
                            
                            ZStack {
                                RoundedRectangle(cornerRadius: 30)
                                    .fill(.gray)
                                    .frame(width: 350 , height: 150)
                                HStack{
                                    Image("room1").resizable().frame(width: 200 , height: 130)
                                    VStack {
                                        Text(" Firomint").bold().foregroundColor(.white)
                                        Text("Sat , AUG,23")
                                        
                                        ZStack{
                                            
                                            RoundedRectangle(cornerRadius: 20)
                                                .fill(.green)
                                                .frame(width: 100 , height: 20)
                                            
                                            Button("For help") {
                                                
                                            }.foregroundColor(.white)
                                                
                                            
                                        }//end of z stack button
                                        ZStack{
                                            
                                            RoundedRectangle(cornerRadius: 20)
                                                .fill(.orange)
                                                .frame(width: 100 , height: 20)
                                            
                                            Button("Direction") {
                                                
                                            }.foregroundColor(.white)
                                               
                                            
                                        }//end of z stack button
                                        
                                    }
                                }
                            } //end of z stack one
                            
                            ZStack {
                                RoundedRectangle(cornerRadius: 30)
                                    .fill(.gray)
                                    .frame(width: 350 , height: 150)
                                HStack{
                                    Image("room2").resizable().frame(width: 200 , height: 130)
                                    VStack {
                                        Text(" Mairiot").bold().foregroundColor(.white)
                                        Text("Fariday , Sep,19")
                                        ZStack{
                                            
                                            RoundedRectangle(cornerRadius: 20)
                                                .fill(.green)
                                                .frame(width: 100 , height: 20)
                                            
                                            Button("For help") {
                                                
                                            }.foregroundColor(.white)
                                                
                                            
                                        }//end of z stack button
                                        ZStack{
                                            
                                            RoundedRectangle(cornerRadius: 20)
                                                .fill(.orange)
                                                .frame(width: 100 , height: 20)
                                            
                                            Button("Direction") {
                                                
                                            }.foregroundColor(.white)
                                               
                                            
                                        }//end of z stack button
                                    }
                                }
                            } //end of z stack two
                            
                            ZStack {
                                RoundedRectangle(cornerRadius: 30)
                                    .fill(.gray)
                                    .frame(width: 350 , height: 150)
                                HStack{
                                    Image("room3").resizable().frame(width: 200 , height: 130)
                                    VStack {
                                        Text(" Sherton").bold().foregroundColor(.white)
                                        Text("Mon , Feb,11")
                                        ZStack{
                                            
                                            RoundedRectangle(cornerRadius: 20)
                                                .fill(.green)
                                                .frame(width: 100 , height: 20)
                                            
                                            Button("For help") {
                                                
                                            }.foregroundColor(.white)
                                                
                                            
                                        }//end of z stack button
                                        ZStack{
                                            
                                            RoundedRectangle(cornerRadius: 20)
                                                .fill(.orange)
                                                .frame(width: 100 , height: 20)
                                            
                                            Button("Direction") {
                                                
                                            }.foregroundColor(.white)
                                               
                                            
                                        }//end of z stack button
                                    }
                                }
                            } //end of z stack one
                        }//END of VStack
                    }
                }
            }
        }
    }
}

struct MyTrip2_Previews: PreviewProvider {
    static var previews: some View {
        MyTrip2()
    }
}
