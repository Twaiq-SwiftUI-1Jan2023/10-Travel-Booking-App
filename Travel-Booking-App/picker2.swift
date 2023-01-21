//
//  picker2.swift
//  Travel-Booking-App
//
//  Created by البراء سيت on 29/06/1444 AH.
//

import SwiftUI

struct picker2: View {
    @State var lis : [String] = ["hotel1","hotel3","hotel4","hotel1"]
    var body: some View {
      
        VStack{
            ScrollView {
                VStack(spacing: 10) {
                    ForEach(lis , id: \.self) {i in
                        HStack{
                            
                            Image("\(i)")
                                .resizable()
                                .frame(width: 150, height: 130)
                                .cornerRadius(20)
                            
                            VStack{
                                Text("the prodisn inn")
                                    .padding()
                                
                                HStack {
                                    VStack {
                                        Text("cheak in ")
                                            .font(.footnote)
                                            .foregroundColor(.green)
                                        
                                        Text("sat Aug 21")
                                            .font(.caption)
                                            .foregroundColor(.gray)
                                    }
                                    .padding(.leading)
                                    Spacer()
                                    VStack{
                                        
                                        Text("cheak out ")
                                            .font(.footnote)
                                            .foregroundColor(.red)
                                        Text("sat Aug 21")
                                            .font(.caption)
                                            .foregroundColor(.gray)
                                        
                                    }
                                    .padding(.trailing,30)
                                    
                                    
                                }
                                
                                
                                HStack {
                                    VStack{
                                        Button {
                                            
                                        } label: {
                                            ZStack{
                                                Rectangle()
                                                    .frame(width: 70, height:20 )
                                                    .foregroundColor(.green)
                                                    .cornerRadius(20)
                                                Text("for call")
                                                    .font(.footnote)
                                                
                                                    .foregroundColor(.white)
                                            }
                                        }
                                    }
                                    
                                    VStack{
                                        Button {
                                            
                                        } label: {
                                            ZStack{
                                                Rectangle()
                                                    .frame(width: 70, height:20 )
                                                    .foregroundColor(Color("direcion"))
                                                   
                                                    .cornerRadius(20)
                                                Text("dirctions")
                                                    .font(.footnote)
                                                
                                                    .foregroundColor(.blue)
                                            }
                                        }
                                    }
                                }
                                
                                
                            }
                            
                            
                        }
                            
                            
                            .padding()
                            .frame(width: 380, height: 200)
                            .background(Color("back"))
                        
                    }
                }
            }
        }
    }
}

struct picker2_Previews: PreviewProvider {
    static var previews: some View {
        picker2()
    }
}
