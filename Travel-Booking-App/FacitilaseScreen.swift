//
//  FacitilaseScreen.swift
//  Travel-Booking-App
//
//  Created by البراء سيت on 27/06/1444 AH.
//

import SwiftUI

struct FacitilaseScreen: View {
    @State var username = ""
    @State var Password = ""
    var body: some View {
        ZStack
        {
            Color("green1")
                .ignoresSafeArea()
            
            VStack {
                
                HStack{
                    Button {
                        
                    }
                    label : {
                        Image(systemName: "arrow.left")
                        
                            .resizable()
                            .frame(width: 20, height: 20)
                    }
                    .padding()
                    Spacer()
                    
                    Text("Pon trafic Hotel")
                    Spacer()
                }
                .foregroundColor(Color.white)
                .padding(.horizontal)
                ZStack{
                    Color.white
                        .ignoresSafeArea()
                    VStack {
                        
                        Image("r2")
                            .resizable()
                            .padding(.bottom)
                            .frame(width: 350, height: 250)
                            .cornerRadius(20)
                        HStack{
                           
                            Text("Details")
                            Text("Faciltilse")
                                .foregroundColor(Color("green1"))
                            Text("Reviews")
                            Spacer()
                            Text("Dirction")
                                .foregroundColor(Color.blue)
                        }
                        .padding()
                        
                        
                        VStack{
                            HStack(spacing:10 ){
                                
                                
                                VStack{
                                    ZStack{
                                        Rectangle()
                                            .frame(width: 50 ,height:50 )
                                            .opacity(0.2)
                                            .cornerRadius(20)
                                        Image(systemName: "house.fill")
                                            .resizable()
                                            .frame(width: 30, height: 30)
                                            .foregroundColor(.orange)
                                    }
                                    Text("04 Rooms")
                                        .font(.footnote)
                                       
                                }
                                .padding(.horizontal)
                                
                                VStack{
                                    ZStack{
                                        Rectangle()
                                            .frame(width: 50 ,height:50 )
                                            .opacity(0.2)
                                            .cornerRadius(20)
                                        Image(systemName: "air.conditioner.horizontal")
                                            .resizable()
                                            .frame(width: 30, height: 30)
                                            .foregroundColor(.blue)
                                    }
                                    Text("AC")
                                        .font(.footnote)
                                    
                                }
                                .padding(.horizontal)
                                
                                
                                VStack{
                                    ZStack{
                                        Rectangle()
                                            .frame(width: 50 ,height:50 )
                                            .opacity(0.2)
                                            .cornerRadius(20)
                                        
                                        Image("G")
                                            .resizable()
                                            .foregroundColor(.purple)
                                            .frame(width: 30, height: 30)
                                            
                                    }
                                    Text("Generetor")
                                        .font(.footnote)
                                    
                                }
                                .padding(.horizontal)
                                
                                VStack{
                                    ZStack{
                                        Rectangle()
                                            .frame(width: 50 ,height:50 )
                                            .opacity(0.2)
                                            .cornerRadius(20)
                                        
                                        Image(systemName: "parkingsign.brakesignal")
                                            
                                            .resizable()
                                            .frame(width: 30, height: 30)
                                            .foregroundColor(.green)
                                    }
                                    
                                    Text("parking")
                                        .font(.footnote)
                                        
                                }
                                .padding(.horizontal)
                               
                            }
                            
                            HStack (spacing:16 ){
                                
                                
                                VStack{
                                    ZStack{
                                        Rectangle()
                                            .frame(width: 50 ,height:50 )
                                            .opacity(0.2)
                                            .cornerRadius(20)
                                        Image(systemName: "house.fill")
                                            .resizable()
                                            .frame(width: 30, height: 30)
                                            .foregroundColor(.purple)
                                    }
                                    Text("ATM")
                                        .font(.footnote)
                                       
                                }
                                .padding(.horizontal)
                                
                                VStack{
                                    ZStack{
                                        Rectangle()
                                            .frame(width: 50 ,height:50 )
                                            .opacity(0.2)
                                            .cornerRadius(20)
                                        Image(systemName: "fork.knife")
                                            .resizable()
                                            .frame(width: 30, height: 30)
                                            .foregroundColor(.green)
                                    }
                                    Text("Meal")
                                        .font(.footnote)
                                    
                                }
                                .padding(.horizontal)
                               
                                
                                VStack{
                                    ZStack{
                                        Rectangle()
                                            .frame(width: 50 ,height:50 )
                                            .opacity(0.2)
                                            .cornerRadius(20)
                                        
                                        Image(systemName: "carrot")
                                            .resizable()
                                            .frame(width: 30, height: 30)
                                            .foregroundColor(.orange)
                                    }
                                    Text("Snaks")
                                        .font(.footnote)
                                    
                                }
                                .padding(.horizontal)
                                
                                VStack{
                                    ZStack{
                                        Rectangle()
                                            .frame(width: 50 ,height:50 )
                                            .opacity(0.2)
                                            .cornerRadius(20)
                                        
                                        Image(systemName: "wifi")
                                            .resizable()
                                            .frame(width: 30, height: 30)
                                            .foregroundColor(.blue)
                                    }
                                    
                                    Text("wifi")
                                        .font(.footnote)
                                        
                                }
                                .padding(.horizontal)
                               
                            }
                            .padding(.vertical)
                           HStack (spacing:16 ){
                                
                                
                                VStack{
                                    ZStack{
                                        Rectangle()
                                            .frame(width: 50 ,height:50 )
                                            .opacity(0.2)
                                            .cornerRadius(20)
                                        Image(systemName: "stethoscope")
                                            .resizable()
                                            .frame(width: 30, height: 30)
                                            .foregroundColor(.blue)
                                    }
                                    Text("Hosbital")
                                        .font(.footnote)
                                       
                                }
                                .padding(.horizontal)
                                
                                VStack{
                                    ZStack{
                                        Rectangle()
                                            .frame(width: 50 ,height:50 )
                                            .opacity(0.2)
                                            .cornerRadius(20)
                                        Image(systemName: "figure.disc.sports")
                                            .resizable()
                                            .frame(width: 30, height: 30)
                                            .foregroundColor(.orange)
                                    }
                                    Text("sports")
                                        .font(.footnote)
                                    
                                }
                                .padding(.horizontal)
                                
                                
                                VStack{
                                    ZStack{
                                        Rectangle()
                                            .frame(width: 50 ,height:50 )
                                            .opacity(0.2)
                                            .cornerRadius(20)
                                        
                                        Image(systemName: "tv")
                                            .resizable()
                                            .frame(width: 30, height: 30)
                                            .foregroundColor(.green)
                                    }
                                    Text("TV")
                                        .font(.footnote)
                                    
                                }
                                .padding(.horizontal)
                                
                                VStack{
                                    ZStack{
                                        Rectangle()
                                            .frame(width: 50 ,height:50 )
                                            .opacity(0.2)
                                            .cornerRadius(20)
                                        
                                        Image(systemName: "parkingsign.brakesignal")
                                            .resizable()
                                            .frame(width: 30, height: 30)
                                    }
                                    
                                    Text("Balconi")
                                        .font(.footnote)
                                        
                                }
                                .padding(.horizontal)
                               
                            }
                           .padding(.vertical)
                           .padding(.bottom,10)
                            
                            
                            
                            
                            
                        }
                        
                        
                        
                        
                        
                        
                        
                        
                       
                        
                        
                        
                        
                        
                            
                            ZStack {
                                Rectangle()
                                    .foregroundColor(.black)
                                    .opacity(0.09)
                                    .frame(width: 300, height: 50)
                                    .cornerRadius(20)
                                HStack{
                                    HStack{
                                        Text("$1200.00")
                                            .foregroundColor(Color("green1"))
                                        Text("/ night")
                                            .font(.system(size: 13))
                                    }
                                    HStack{
                                    
                                    Button {
                                        
                                    } label: {
                                        Text("Book now ")
                                            .frame(width: 120, height: 50)
                                    }
                                    .foregroundColor(Color.white)
                                    .background(Color("green1"))
                                    .cornerRadius(15)
                                    
                                    
                                    }
                                   
                                    .padding(.leading)
                                  
                                
                                
                                
                                
                            }
                            
                        }
                        
                        
                    }
                    
                    
                }
                
            }
            
        }
        
        
    }
}

struct FacitilaseScreen_Previews: PreviewProvider {
    static var previews: some View {
        FacitilaseScreen()
    }
}
