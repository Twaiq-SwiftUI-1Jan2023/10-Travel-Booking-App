//
//  pickerpage.swift
//  Travel-Booking-App
//
//  Created by البراء سيت on 28/06/1444 AH.
//

import SwiftUI

struct pickerpage: View {
    @State var lis : [String] = ["hotel3","hotel2","hotel1","hotel4"]
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
                                
                                Button {
                                    
                                } label: {
                                    ZStack{
                                        Rectangle()
                                            .frame(width: 120, height:20 )
                                            .foregroundColor(.orange)
                                            .cornerRadius(20)
                                        
                                        NavigationLink(destination: paymentpage()){
                                            Text("Write us a privew")
                                                .font(.footnote)
                                                .foregroundColor(.white)
                                                
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

struct pickerpage_Previews: PreviewProvider {
    static var previews: some View {
        pickerpage()
    }
}
