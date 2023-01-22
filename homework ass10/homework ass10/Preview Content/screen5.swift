//
//  screen5.swift
//  homework ass10
//
//  Created by MAJEDAH on 28/06/1444 AH.
//

import SwiftUI

struct screen5: View {
    var body: some View {
        VStack(spacing: 20){
            HStack (spacing: 100){
            Image(systemName: "arrowshape.left.fill")
                    .foregroundColor(Color.gray)
                Text("crowne plaza Hotel")
                    .foregroundColor(Color.gray)
                Spacer()
            }
            
            Image("room")
                .resizable()
                .frame(width: 400 , height: 250)
                .cornerRadius(50)
            
            Spacer()
            
            
            HStack{
                Text("   Deatils")
                Text("  facilities")
                    .foregroundColor(ContentView.wall)
                Text("  reviows")
                
                Spacer()
                Text("Direction   ")
                    .foregroundColor(ContentView.mk)
                
            }
            Spacer()
            HStack(spacing: 35){
                ZStack{
                    Rectangle()
                        .cornerRadius(70)
                        .frame(width: 60, height: 60)
                        .foregroundColor(ContentView.gray)
                Image(systemName: "house.circle.fill")
                        .resizable()
                        .frame(width: 30 , height: 30)
                        .foregroundColor(Color.orange)
                    
                }

                   
                ZStack {
                    Rectangle()
                            .cornerRadius(70)
                            .frame(width: 60, height: 60)
                        .foregroundColor(ContentView.gray)
                    Image(systemName: "air.conditioner.horizontal.fill")
                        .resizable()
                        .frame(width: 30 , height: 30)
                        .foregroundColor(ContentView.wall)
                    
                }
                    
                ZStack {
                    Rectangle()
                            .cornerRadius(70)
                            .frame(width: 60, height: 60)
                        .foregroundColor(ContentView.gray)
                    Image(systemName: "parkingsign.circle.fill")
                        .resizable()
                        .frame(width: 30 , height: 30)
                        .foregroundColor(ContentView.prepple)
                    
                }
                
                
                ZStack {
                    Rectangle()
                            .cornerRadius(70)
                            .frame(width: 60, height: 60)
                        .foregroundColor(ContentView.gray)
                    Image(systemName: "creditcard.fill")
                        .resizable()
                        .frame(width: 30 , height: 30)
                        .foregroundColor(Color.yellow)
                    
                }
               
                
            }
            HStack (spacing: 50){
                Text("4 rooms")
                    .foregroundColor(Color.gray)
                    
                Text("AC")
                    .foregroundColor(Color.gray)
                Text("parking")
                    .foregroundColor(Color.gray)
                Text("ATM")
                    .foregroundColor(Color.gray)
            
            }
            HStack (spacing: 35){
                ZStack {
                    Rectangle()
                            .cornerRadius(70)
                            .frame(width: 60, height: 60)
                        .foregroundColor(ContentView.gray)
                
                Image(systemName: "frying.pan.fill")
                    .resizable()
                    .frame(width: 30 , height: 30)
                    .foregroundColor(Color.pink)
        
                    
                }
                ZStack{
                    Rectangle()
                        .cornerRadius(70)
                        .frame(width: 60, height: 60)
                        .foregroundColor(ContentView.gray)
                    
                    
                    Image(systemName: "popcorn")
                        .resizable()
                        .frame(width: 30 , height: 30)
                        .foregroundColor(ContentView.mk)
                    
                }
                
                ZStack {
                    Rectangle()
                        .cornerRadius(70)
                        .frame(width: 60, height: 60)
                    .foregroundColor(ContentView.gray)
                
                
                
                Image(systemName: "wifi")
                    .resizable()
                    .frame(width: 30 , height: 30)
                    .foregroundColor(ContentView.wall)
                
                }
                
                
                ZStack {
                    Rectangle()
                        .cornerRadius(70)
                        .frame(width: 60, height: 60)
                        .foregroundColor(ContentView.gray)
                    
                    Image(systemName: "h.circle.fill")
                        .resizable()
                        .frame(width: 30 , height: 30)
                        .foregroundColor(Color.brown)
                }
                
                
                
                
            }
            
            HStack(spacing: 50 ){
                Text("meal")
                    .foregroundColor(Color.gray)
                    
                Text("snacks")
                    .foregroundColor(Color.gray)
                Text("wifi")
                    .foregroundColor(Color.gray)
                Text("hospital")
                    .foregroundColor(Color.gray)
            }
            
            HStack {
                
                
                Text("       $1200.00/")
                    .foregroundColor(ContentView.wall)
                Text("night")
                    .foregroundColor(Color.gray)
                Spacer()
                Button {
                    
                }label: {
                    Text("Book Now")
                        .padding()
                        .background(ContentView.wall)
                        .foregroundColor(Color.white)
                        .offset(y: -3)
                }

                Spacer()
                
            }
            
                    
            
            
        }
        
        
    }
}

struct screen5_Previews: PreviewProvider {
    static var previews: some View {
        screen5()
    }
}
