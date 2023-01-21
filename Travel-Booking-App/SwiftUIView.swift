//
//  SwiftUIView.swift
//  Travel-Booking-App
//
//  Created by البراء سيت on 27/06/1444 AH.
//

import SwiftUI

struct SwiftUIView: View {
    @State var Rate = ""
    var body: some View {
        ZStack{
            Color("green1")
                .ignoresSafeArea()
            VStack (){
                
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
                    Text("Add Reviews")
                    Spacer()
                }
                .foregroundColor(Color.white)
                .padding()
                ZStack{
                    Color.white
                        .ignoresSafeArea()
                    VStack{
                        HStack{
                            Text("Rate your Stay")
                                .font(.system(size: 30))
                            
                        }
                        .font(.system(size: 30))
                        .frame(width: 350, height: 30, alignment: .leading)
                      
                        .padding(.top ,40)
                        .padding(.bottom ,30)
                        HStack{
                            Image(systemName: "star.fill")
                                .foregroundColor(.yellow)
                                .font(.system(size: 40))
                            Image(systemName: "star.fill")
                                .foregroundColor(.yellow)
                                .font(.system(size: 40))
                            Image(systemName: "star.fill")
                                .foregroundColor(.yellow)
                                .font(.system(size: 40))
                            Image(systemName: "star.fill")
                                .foregroundColor(.yellow)
                                .font(.system(size: 40))
                            Image(systemName: "star.leadinghalf.filled")
                                .foregroundColor(.yellow)
                                .font(.system(size: 40))
                            
                        }
                        .frame(width: 350, height: 30, alignment: .leading)
                        
                        VStack{
                            HStack{
                                Text("Your preview")
                                
                                
                            }
                            .frame(width: 350, height: 30, alignment: .leading)
                            .padding(.top,30)
                            
                            HStack{
                                
                               TextField("write your stay esperience",text: $Rate)
                                    .padding()
                            }
                            
                            .frame(width: 350 , height: 250,alignment: .top)
                            
                            .background(Color.black.opacity(0.06))
                            Spacer()
                            
                            Button {
                                
                            } label: {
                                Text("Submit your Review ")
                                
                                    .frame(width: 350, height: 60)
                            }
                            .foregroundColor(Color.white)
                            .background(Color("green1"))
                            .cornerRadius(25)
                            .padding(30)
                            
                        }
                        
                        
                    }
                }
            }
            
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
