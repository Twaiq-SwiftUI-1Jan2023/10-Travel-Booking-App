//
//  MyTrip1.swift
//  Nada-TravelAssigment
//
//  Created by N on 20/01/2023.
//

import SwiftUI

struct MyTrip1: View {
    var body: some View {
        ZStack{
            Color("c1").ignoresSafeArea()
            
            
            VStack{
                HStack{
                    Button{}
                label: {
                    Image(systemName: "arrow.backward.square")
                        .font(.system(size: 25))
                        .foregroundColor(.white)
                        .padding()
                }
                    Spacer()
                    Text("My Trips")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .bold()
                        .foregroundColor(.white)
                        .padding(.trailing , 150)
                }//end of h stack
                ZStack{
                    RoundedRectangle(cornerRadius: 80)
                        .fill(Color(UIColor.secondarySystemBackground)).ignoresSafeArea()
                    VStack{
                        
                        TabView {
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
                                                        .fill(Color("c1"))
                                                        .frame(width: 100 , height: 20)
                                                    
                                                    Button("Book Now") {
                                                       
                                                    }.foregroundColor(.white)
                                                        .padding()
                                                    
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
                                                        .fill(Color("c1"))
                                                        .frame(width: 100 , height: 20)
                                                    
                                                    Button("Book Now") {
                                                       
                                                    }.foregroundColor(.white)
                                                        .padding()
                                                    
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
                                                        .fill(Color("c1"))
                                                        .frame(width: 100 , height: 20)
                                                    
                                                    Button("Book Now") {
                                                       
                                                    }.foregroundColor(.white)
                                                        .padding()
                                                    
                                                }//end of z stack button
                                            }
                                        }
                                    } //end of z stack one
                                }//END of VStack
                            }
                            .edgesIgnoringSafeArea(.top)
                            .tabItem {
                                Image(systemName: "1.circle")
                                Text("Upcoming").font(.largeTitle).bold()
                            }
                            
                            MyTrip2()
                                .edgesIgnoringSafeArea(.top)
                                .tabItem {
                                    Image(systemName: "2.circle")
                                    Text("Cmpleted")
                                }
                        }//end of tabView
                    }
                }//end of z stack
                
                
                
            }//end of v stack
        }//end of first z stack
    }
}

struct MyTrip1_Previews: PreviewProvider {
    static var previews: some View {
        MyTrip1()
    }
}
