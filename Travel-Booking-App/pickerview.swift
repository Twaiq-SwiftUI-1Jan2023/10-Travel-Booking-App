//
//  pickerview.swift
//  Travel-Booking-App
//
//  Created by البراء سيت on 28/06/1444 AH.
//

import SwiftUI

struct pickerview: View {
    @State var selected = 2
    var body: some View {
        
        
        
        ZStack {
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
                
                            Picker (selection: $selected, label: Text("Picker"), content: {
                                Text("Upcoming").tag(1)
                                Text("completed").tag (2)
                                Text("Cancelled").tag (3)
                            })
                            .padding()
            
                            .pickerStyle(SegmentedPickerStyle())
                            if selected == 1 {
                                
                                
                                    pickerpage()
                                        .padding(.horizontal)
                                
                            
                               
                            }
                else if selected == 2 {
                    picker2()
                }
                            else {
                                List (0..<10) { item in
                                    Text("nothing")
                                }
                            }
                    
            }
           
        }
    
    }
}
            
            struct pickerview_Previews: PreviewProvider {
                static var previews: some View {
                    pickerview()
                }
            }
        
    

