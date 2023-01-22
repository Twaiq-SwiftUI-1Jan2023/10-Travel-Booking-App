//
//  screen6.swift
//  homework ass10
//
//  Created by MAJEDAH on 29/06/1444 AH.
//

import SwiftUI

struct screen6: View {
    var body: some View {
        VStack(spacing: 20 ){
            HStack(spacing: 80){
                Image(systemName: "arrowshape.left.fill")
                        .foregroundColor(Color.gray)
                    Text("crowne plaza Hotel")
                        .foregroundColor(Color.gray)
                Spacer()
                
            }
            HStack (spacing: 20 )
            {
                
                Button{
                }label: {
                    Text("Un coming")
                        .padding()
                        .foregroundColor(ContentView.wall)
                        .background(ContentView.gray)
                        .cornerRadius(30)
                }
                
                
                Button{
                }label: {
                Text("completed")
                        .padding()
                        .foregroundColor(Color.white)
                        .background(ContentView.wall)
                        .cornerRadius(30)
                    
                    
                }
                
                
                Button {
                }label: {
                    Text("cancelled")
                        .padding()
                        .foregroundColor(ContentView.wall)
                        .background(ContentView.gray)
                        .cornerRadius(30)
                }
                
                
                
                
                
                
                
                
            }
            ScrollView(.vertical) {
                VStack{
                    
                    ZStack {
                        Rectangle()
                            .frame(width: 350.0, height: 120.0)
                        .foregroundColor(ContentView.gray)
                        HStack (spacing: 30){
                            Image("rome1")
                                .resizable()
                                .frame(width: 110.0, height: 110.0)
                            .cornerRadius(30)
                            VStack (spacing: 10){
                                Text("the paradise lnn")
                                Text("")
                                
                                
                                
                                
                                Text("check-in")
                                    .font(.caption)
                                    .foregroundColor(ContentView.wall)
                                Text("sat,Aug 21")
                                    .font(.caption)
                                
                            }
                            
                            Button {
                            }label: {
                                Image(systemName: "pencil")
                                    .resizable()
                                    .frame(width: 20.0, height: 20.0)
                                    .padding()
                                    .foregroundColor(Color.white)
                                    .background(Color.orange)
                                    .cornerRadius(15)
                            }
                            

                            
                        }
                        
                    }
                    
                    
                    
                    
                    
                    ZStack {
                        Rectangle()
                            .frame(width: 350.0, height: 120.0)
                        .foregroundColor(ContentView.gray)
                        HStack (spacing: 30){
                            Image("rome2")
                                .resizable()
                                .frame(width: 110.0, height: 110.0)
                            .cornerRadius(30)
                        
                        VStack (spacing: 10){
                            Text("the paradise lnn")
                            Text("")
                            
                            
                            
                            
                            Text("check-in")
                                .font(.caption)
                                .foregroundColor(ContentView.wall)
                            Text("sat,Aug 21")
                                .font(.caption)

                        }

                            Button{
                            
                            }label: {
                                Image(systemName: "pencil")
                                    .resizable()
                                    .frame(width: 20.0, height: 20.0)
                                    .padding()
                                    .foregroundColor(Color.white)
                                    .background(Color.orange)
                                    .cornerRadius(15)
                            }
                            
                            
                            
                            
                            
                        }
                    }
                    
                    
                    
                    
                    
                    
                    
                    ZStack {
                        Rectangle()
                            .frame(width: 350.0, height: 120.0)
                        .foregroundColor(ContentView.gray)
                        
                        HStack(spacing: 30){
                            Image("rome3")
                                .resizable()
                                .frame(width: 110.0, height: 110.0)
                            .cornerRadius(30)
                            VStack (spacing: 10){
                                Text("the paradise lnn")
                                Text("")
                                
                                
                                
                                
                                Text("check-in")
                                    .font(.caption)
                                    .foregroundColor(ContentView.wall)
                                Text("sat,Aug 21")
                                    .font(.caption)
                            }
                            
                            Button {
                            }label: {
                                Image(systemName: "pencil")
                                    .resizable()
                                    .frame(width: 20.0, height: 20.0)
                                    .padding()
                                    .foregroundColor(Color.white)
                                    .background(Color.orange)
                                    .cornerRadius(15)
                            }
                            
                        }
                    }
                    
                    
                    
                    
                    
                    
                    ZStack {
                        Rectangle()
                            .frame(width: 350.0, height: 120.0)
                        .foregroundColor(ContentView.gray)
                        HStack (spacing: 30){
                            Image("rome4")
                            .resizable()
                            .frame(width: 110.0, height: 110.0)
                        .cornerRadius(30)
                            VStack (spacing: 10){
                                Text("the paradise lnn")
                                Text("")
                                
                                
                                
                                
                                Text("check-in")
                                    .font(.caption)
                                    .foregroundColor(ContentView.wall)
                                Text("sat,Aug 21")
                                    .font(.caption)
                            }
                            
                            Button {
                            }label: {
                                Image(systemName: "pencil")
                                    .resizable()
                                    .frame(width: 20.0, height: 20.0)
                                    .padding()
                                    .foregroundColor(Color.white)
                                    .background(Color.orange)
                                    .cornerRadius(15)
                            }

                            
                            
                        }
                    }
                    
                    
                    
                    
                    
                    
                    
                    
                    
                }
                
            }
          
            
            ZStack {
                Rectangle()
                .frame(width: 350.0, height: 70)
                .foregroundColor(ContentView.wall)
            .cornerRadius(40)
                HStack (spacing: 40) {
                    Image(systemName: "house")
                        .resizable()
                        .frame(width: 25 , height: 25)
                        .foregroundColor(Color.white)
                    
                    
                    
                    Image(systemName: "magnifyingglass")
                        .resizable()
                        .frame(width: 25 , height: 25)
                        .foregroundColor(Color.white)
                        
                        
                    Image(systemName: "bag.fill")
                        .resizable()
                        .frame(width: 25 , height: 25)
                        .foregroundColor(Color.white)
                        
                    
                    Image(systemName: "percent")
                        .resizable()
                        .frame(width: 25 , height: 25)
                        .foregroundColor(Color.white)
                    
                    
                    Image(systemName: "person")
                        .resizable()
                        .frame(width: 25 , height: 25)
                        .foregroundColor(Color.white)
                }
            }
                                

            
            
            
        }
    }
}

struct screen6_Previews: PreviewProvider {
    static var previews: some View {
        screen6()
    }
}
