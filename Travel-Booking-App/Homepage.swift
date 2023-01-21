//
//  Homepage.swift
//  Travel-Booking-App
//
//  Created by البراء سيت on 28/06/1444 AH.
//

import SwiftUI

struct Homepage: View {
    @State var hotel:[String] = ["img1","img2","img1","img2"]
    
    var body: some View {
        
        ZStack{
            VStack{
                Image("img1")
                    .resizable()
                    .frame(width: 400, height:300)
                    .ignoresSafeArea()
                    .frame(alignment:.top)
                Spacer()
            }
           
            
            VStack {
                Spacer()
                
               HStack {
                    Button {
                        
                    }
                    label : {
                        Image(systemName: "list.bullet")
                        
                            .resizable()
                            .frame(width: 20, height: 20)
                            .foregroundColor(Color.black)
                            .padding()
                    }
                   
                    .cornerRadius(10)
                    Spacer()
                    
                    Button {
                        
                    }
                    label : {
                        Image("baraa")
                            .resizable()
                            .frame(width:70, height:70 )
                            .background(Color.gray)
                        
                            .cornerRadius(30)
                        
                            .padding()
                    }
                    
                }
               .padding([.leading, .bottom, .trailing])
               
                Spacer()
                VStack{
                    
                    VStack {
                        HStack{
                            
                            VStack{
                                ZStack{
                                    Rectangle()
                                        .frame(width: 50 ,height:50 )
                                        .opacity(0.2)
                                        .cornerRadius(20)
                                    Image(systemName: "figure.walk.motion")
                                        .resizable()
                                        .frame(width: 30, height: 30)
                                        .foregroundColor(.blue)
                                }
                                Text("Trips")
                                    .font(.footnote)
                                
                            }
                            .padding(.horizontal)
                            
                            VStack{
                                ZStack{
                                    Rectangle()
                                        .frame(width: 50 ,height:50 )
                                        .opacity(0.2)
                                        .cornerRadius(20)
                                    Image(systemName: "house.fill")
                                        .resizable()
                                        .frame(width: 30, height: 30)
                                        .foregroundColor(.pink)
                                }
                                Text("Hotel")
                                    .font(.footnote)
                                
                            }
                            .padding(.horizontal)
                            
                            
                            VStack{
                                ZStack{
                                    Rectangle()
                                        .frame(width: 50 ,height:50 )
                                        .opacity(0.2)
                                        .cornerRadius(20)
                                    
                                    Image(systemName: "airplane")
                                        .resizable()
                                        .foregroundColor(.purple)
                                        .frame(width: 30, height: 30)
                                    
                                }
                                Text("Flight")
                                    .font(.footnote)
                                
                            }
                            .padding(.horizontal)
                            
                            VStack{
                                ZStack{
                                    Rectangle()
                                        .frame(width: 50 ,height:50 )
                                        .opacity(0.2)
                                        .cornerRadius(20)
                                    
                                    Image(systemName: "percent")
                                    
                                        .resizable()
                                        .frame(width: 30, height: 30)
                                        .foregroundColor(.blue)
                                }
                                
                                Text("offirs")
                                    .font(.footnote)
                                
                            }
                            .padding(.all)
                            
                            
                        }
                        .padding(.top)
                        
                        
                        HStack{
                            Text("Popular offer")
                                .frame(width: 350, height:30 ,alignment: .leading)
                        }
                        
                        ScrollView(.horizontal) {
                            HStack(spacing:0) {
                                ForEach(hotel,id:\.self) {hotel in
                                    Image("\(hotel)")
                                    
                                        .frame(width: 150, height: 150)
                                    
                                        .cornerRadius(30)
                                        .padding(.horizontal)
                                }
                            }
                        }
                       
                        
                        HStack{
                            Text("Hotel near you")
                                .frame(width: 350, height:30 ,alignment: .leading)
                        }
                        
                        
                        ScrollView(.horizontal) {
                            HStack(spacing: 1) {
                                ForEach(allhotel , id:\.id ){ hotel in
                                    ZStack{
                                        VStack{
                                            Image("\(hotel.image)")
                                                .resizable()
                                            
                                                .frame(width: 250, height: 150)
                                                .cornerRadius(15)
                                                .padding(.horizontal)
                                            HStack {
                                                Text("pon pocificic Hotle")
                                                
                                                    .font(.title2)
                                                Spacer()
                                            }
                                            .padding(.horizontal)
                                            
                                            HStack{
                                                Image(systemName: "star.fill")
                                                
                                                    .foregroundColor(.yellow)
                                                Image(systemName: "star.fill")
                                                
                                                    .foregroundColor(.yellow)
                                                Image(systemName: "star.fill")
                                                
                                                    .foregroundColor(.yellow)
                                               
                                                Image(systemName: "star.fill")
                                                
                                                    .foregroundColor(.yellow)
                                                Spacer()
                                                Text("$\(hotel.price) /ngiht")
                                                    .foregroundColor(Color("green1"))
                                                
                                            }
                                            .padding(.horizontal)
                                        }
                                        .background(Color.white)
                                        .cornerRadius(16)
                                        //.frame(width: 150, height:150)
                                        .padding(.horizontal)
                                    }
                                }
                            }
                        }
                        
                        
                      
                        
                    }
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                 
                    
                    VStack{
                        HStack(spacing:2){
                            VStack{
                                HStack{
                                    Image(systemName: "house.fill")
                                }
                                HStack{
                                    Button {
                                        
                                    } label: {
                                        
                                        Text("Home")
                                            .font(.footnote)
                                    }
                                }
                                
                                
                            }
                            .padding()
                            .foregroundColor(Color("green1"))
                           
                            VStack{
                                HStack{
                                    Image(systemName: "magnifyingglass")
                                }
                                HStack{
                                    Button {
                                        
                                    } label: {
                                        
                                        Text("Search")
                                            .font(.footnote)
                                    }
                                }
                            }
                            .foregroundColor(.black)
                            .padding(.horizontal)
                            VStack{
                                HStack{
                                    Image(systemName: "bag")
                                }
                                HStack{
                                    Button {
                                        
                                    } label: {
                                        
                                        Text("Trips")
                                            .font(.footnote)
                                    }
                                }
                            }
                            .padding(.horizontal)
                            .foregroundColor(.black)
                          
                            VStack{
                                HStack{
                                    Image(systemName: "percent")
                                }
                                HStack{
                                    Button {
                                        
                                    } label: {
                                        
                                        Text("offers")
                                            .font(.footnote)
                                    }
                                }
                            }
                            .foregroundColor(.black)
                            .padding()
                            VStack{
                                HStack{
                                    Image(systemName: "person")
                                }
                                HStack{
                                    Button {
                                        
                                    } label: {
                                        
                                        Text("profile")
                                            .font(.footnote)
                                    }
                                }
                            }
                            .padding(.horizontal)
                            .foregroundColor(.black)
                            
                           
                        }
                        
                        
                    }
                    
                    .frame(width: 400, height:80 )
                    .padding(.horizontal)
                    .background(Color.white)
                  
                    .cornerRadius(120)
                    
                }
            
                .frame(width: 400, height: 650)
                .background(Color("back"))
                .cornerRadius(80)
            }
            .ignoresSafeArea()
        }
    }
}



struct hotel2{
    let id = UUID()
    var image: String
    var price : Int
    
}
var h1 = hotel2(image: "hotel2", price: 1200)
var h2 = hotel2(image: "hotel3", price: 1200)
let allhotel = [h1,h2]

struct Homepage_Previews: PreviewProvider {
    static var previews: some View {
        Homepage()
    }
}
