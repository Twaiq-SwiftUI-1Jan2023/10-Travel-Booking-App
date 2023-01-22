//
//  screen 3..swift
//  homework ass10
//
//  Created by MAJEDAH on 28/06/1444 AH.
//

import SwiftUI

struct screen_3_: View {
    var body: some View {
        ZStack {
            VStack{
                
                Image("travel")
                    .resizable()
                    .frame(width: 400, height: 270)
               Rectangle()
                    .cornerRadius(60)
                    .foregroundColor(ContentView.gray)
                    .frame(width: 400 , height: 700)
                    .offset(y: -65)
            
               
                    
            }
            HStack (spacing: 250 ) {
                Image(systemName: "list.dash")
                    .offset(y: -380)
                Image("pr1")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
                    .offset(y: -370)
                
            }
            Text("let's Explore \n  the world")
                .foregroundColor(Color.white)
                .offset(x:-100 , y: -335)
            
           
            
                
            VStack (spacing: 30) {
                
                VStack (spacing:5 ) {
                    HStack(spacing:30){
                        ZStack {
                            
                            Rectangle()
                                .cornerRadius(70)
                            .frame(width: 60, height: 60)                    .foregroundColor(ContentView.prepple)
                            Image(systemName: "figure.walk")
                                .resizable()
                                .frame(width: 20, height: 30.0)
                                .foregroundColor(Color.purple)
                            
                            
                        }
                        
                        
                        
                        
                            
                                ZStack {
                                    Rectangle()
                                        .frame(width: 60, height: 60)
                                        .cornerRadius(70)
                                        .foregroundColor(ContentView.pinke)
                                    Image(systemName: "house.fill")
                                        .resizable()
                                        .frame(width: 30, height: 30.0)
                                        .foregroundColor(Color.pink)
                                    
                                    
                                    
                                }
                                
                                
                                ZStack {
                                    Rectangle()
                                        .frame(width: 60, height: 60)
                                        .cornerRadius(70)
                                        .foregroundColor(ContentView.yallo)
                                    Image(systemName: "airplane")
                                        .resizable()
                                        .frame(width: 30, height: 30.0)
                                        .foregroundColor(Color.orange)
                                    
                                }
                                
                                
                                
                                
                                ZStack {
                                    Rectangle()
                                        .frame(width: 60, height: 60)
                                        .cornerRadius(70)
                                        .foregroundColor(ContentView.papblo)
                                    Image(systemName: "percent")
                                        .foregroundColor(Color.blue)
                                    
                                   
                                }
                                
                                
                                    
                            
                          
                        
                            
                            
                    }
                    
                    HStack (spacing: 50){
                      Text("Trips")
                            .foregroundColor(Color.gray)
                        Text("Hotels")
                            .foregroundColor(Color.gray)
                        Text("Flights")
                            .foregroundColor(Color.gray)
                        Text("Offers")
                            .foregroundColor(Color.gray)
                        
                    }
                                        
                    
                }
                
                VStack {
                    Text("popular offer")
                        .offset(x: -120)
                }
                ScrollView (.horizontal) {
                    HStack{
                        
                        ZStack {
                            
                            Image("milano")
                                .resizable()
                                .frame(width: 130, height: 130)
                                .cornerRadius(30)
                                
                        }
                        
                        
                        
                        
                       
                        
                        
                        
                        ZStack {
                           Image("msr")
                                .resizable()
                            .frame(width: 130, height: 130)
                        .cornerRadius(30)
                        }
                        
                        
                        
                        
                        ZStack {
                           Image("makka")
                                .resizable()
                                .frame(width: 130, height: 130)
                            .cornerRadius(30)
                        }
                        
                        
                        
                        
                        ZStack {
                            Image("IMG")
                                .resizable()
                                .frame(width: 130, height: 130)
                            .cornerRadius(30)
                        }
                    }
                }
                HStack{
                    Text("      Hotel Near you")
                    Spacer()
                }
                VStack {
                    
                    ScrollView (.horizontal){
                        HStack (spacing: 50){
                            
                            VStack  {
                                ZStack {
                                    Image("reds")
                                        .resizable()
                                        .frame(width: 150, height: 110)
                                    
                                    
                                    
                                }
                                Text("Ritz-carlton          ")
                                HStack {
                                    Image(systemName: "star.fill")
                                        .resizable()
                                        .foregroundColor(Color.yellow)
                                        .frame(width: 10, height: 10)
                                    Image(systemName: "star.fill")
                                        .resizable()
                                        .frame(width: 10.0, height: 10.0)
                                        .foregroundColor(Color.yellow)
                                    Image(systemName: "star.fill")
                                        .resizable()
                                        .frame(width: 10.0, height: 10.0)
                                        .foregroundColor(Color.yellow)
                                    Image(systemName: "star.fill")
                                        .resizable()
                                        .frame(width: 10.0, height: 10.0)
                                        .foregroundColor(Color.yellow)
                                    Image(systemName: "star.fill")
                                        .resizable()
                                        .frame(width: 10.0, height: 10.0)
                                        .foregroundColor(Color.yellow)
                                    Text("1200/")
                                        .foregroundColor(ContentView.papblo)
                                    Text("n")
                                        .foregroundColor(Color.gray)
                                    Spacer()
                                }
                                
                                
                            }
                            
                      
                            
                            
                            
                            
                            
                            
                            VStack {
                                
                                HStack {
                                    Image("cro")
                                        .resizable()
                                    .frame(width: 170, height: 110)
                                
                                }
                                Text("crowne plaza              ")
                                HStack {
                                    
                                    Image(systemName: "star.fill")
                                        .resizable()
                                        .frame(width: 10.0, height: 10.0)
                                        .foregroundColor(Color.yellow)
                                    Image(systemName: "star.fill")
                                        .resizable()
                                        .frame(width: 10.0, height: 10.0)
                                        .foregroundColor(Color.yellow)
                                    Image(systemName: "star.fill")
                                        .resizable()
                                        .frame(width: 10.0, height: 10.0)
                                        .foregroundColor(Color.yellow)
                                    Image(systemName: "star.fill")
                                        .resizable()
                                        .frame(width: 10.0, height: 10.0)
                                        .foregroundColor(Color.yellow)
                                    Image(systemName: "star")
                                        .resizable()
                                        .frame(width: 10.0, height: 10.0)
                                        .foregroundColor(Color.yellow)
                                    Text("699 /")
                                        .foregroundColor(ContentView.papblo)
                                    Text("n")
                                        .foregroundColor(Color.gray)
                                }
                                
                            }
                            
                            
                            
                       
                        }
                        
                       
                            
                            
                            
                           
                        
                        }
                        
                    }
                }
            }
            
            }
            
            
        }
        
    


struct screen_3__Previews: PreviewProvider {
    static var previews: some View {
        screen_3_()
    }
}
