//
//  screen4.swift
//  homework ass10
//
//  Created by MAJEDAH on 28/06/1444 AH.
//

import SwiftUI

struct screen4: View {
    var cantres = ["SA", "kw", "UAE", "Qa"]
    var gues = ["01  gues", "02  gues", "03  gues", "04  gues","05  gues "]
    var rooms = ["01  rooms", "02  rooms", "03  rooms", "04  rooms"]
    @State private var selectedcontres = "SA"
    @State private var selectedgues = "01"
    @State private var selectedrooms = "01"
    var body: some View {
        VStack (spacing: 25){
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
            HStack (spacing: 30){
                Text("crowne plaza Hotel")
                    
                HStack{
                    Image(systemName: "star.fill")
                    .foregroundColor(Color.yellow)
                    Text("4.9 (5.6K reviews )")
                        .foregroundColor(Color.gray)
                        
                }
            }
            HStack {
                Text("        saudi , Riyadh")
                    .foregroundColor(Color.gray)
                Spacer()
                    
            }
            VStack{
                
                    Text("Name")
                    .offset(x : -150)
                TextField("     Majedah khalaf ", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                Text("Email Address")
                .offset(x : -120)
                
                TextField("     majedah.ahshamri@gmsil.com", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                
                
                Text(" Phone Number ")
                .offset(x : -120)
                
                HStack {
                    HStack{
                        Picker("enter countr" , selection: $selectedcontres ){
                            ForEach(cantres , id: \.self) {
                                Text($0)
                                    .padding()
                                
                                
                                
                            }
                        }.background(ContentView.wall)
                        TextField("+966561983440", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                    }
                    
                }
                HStack {
                    Text("     Room's Required")
                    Spacer()
                }
                HStack (spacing: 80){
                    HStack{
                        Picker("enter countr" , selection: $selectedgues ){
                            ForEach(gues , id: \.self) {
                                Text($0)
                            
                                
                                
                            }
                        }
                        
                        .background(ContentView.wall)
                        
                    }
                
                HStack{
                    Picker("enter countr" , selection: $selectedrooms ) {
                        ForEach(rooms , id: \.self){
                            Text($0)
                        }
                        
                    }.background(ContentView.wall)
                }
                
                }
            }
            Button {
                
            }label: {
                Text("Procced to pay")
                    
                    .foregroundColor(Color.white)
                    .frame(width: 200.0, height: 40)
                    .background(ContentView.wall)
                    
            }
            
            }
        
        }
        
    }


struct screen4_Previews: PreviewProvider {
    static var previews: some View {
        screen4()
    }
}
