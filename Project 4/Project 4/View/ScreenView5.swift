//
//  ScreenView5.swift
//  Project 4
//
//  Created by RMP on 28/06/1444 AH.
//

import SwiftUI

struct ScreenView5: View {
    
    let countries = ["🇦🇨", "🇦🇩", "🇦🇪", "🇦🇫", "🇦🇬", "🇦🇮", "🇦🇱", "🇦🇲", "🇦🇴", "🇦🇶", "🇦🇷", "🇦🇸", "🇦🇹", "🇦🇺", "🇦🇼", "🇦🇽", "🇦🇿", "🇧🇦", "🇧🇧", "🇧🇩", "🇧🇪", "🇧🇫", "🇧🇬", "🇧🇭", "🇧🇮", "🇧🇯", "🇧🇱", "🇧🇲", "🇧🇳", "🇧🇴", "🇧🇶", "🇧🇷", "🇧🇸", "🇧🇹", "🇧🇻", "🇧🇼", "🇧🇾", "🇧🇿", "🇨🇦", "🇨🇨", "🇨🇩", "🇨🇫", "🇨🇬", "🇨🇭", "🇨🇮", "🇨🇰", "🇨🇱", "🇨🇲", "🇨🇳", "🇨🇴", "🇨🇵", "🇨🇷", "🇨🇺", "🇨🇻", "🇨🇼", "🇨🇽", "🇨🇾", "🇨🇿", "🇩🇪", "🇩🇬", "🇩🇯", "🇩🇰", "🇩🇲", "🇩🇴", "🇩🇿", "🇪🇦", "🇪🇨", "🇪🇪", "🇪🇬", "🇪🇭", "🇪🇷", "🇪🇸", "🇪🇹", "🇫🇮", "🇫🇯", "🇫🇰", "🇫🇲", "🇫🇴", "🇫🇷", "🇬🇦", "🇬🇧", "🇬🇩", "🇬🇪", "🇬🇫", "🇬🇬", "🇬🇭", "🇬🇮", "🇬🇱", "🇬🇲", "🇬🇳", "🇬🇵", "🇬🇶", "🇬🇷", "🇬🇸", "🇬🇹", "🇬🇺", "🇬🇼", "🇬🇾", "🇭🇰", "🇭🇲", "🇭🇳", "🇭🇷", "🇭🇹", "🇭🇺", "🇮🇨", "🇮🇩", "🇮🇪", "🇮🇱", "🇮🇲", "🇮🇳", "🇮🇴", "🇮🇶", "🇮🇷", "🇮🇸", "🇮🇹", "🇯🇪", "🇯🇲", "🇯🇴", "🇯🇵", "🇰🇪", "🇰🇬", "🇰🇭", "🇰🇮", "🇰🇲", "🇰🇳", "🇰🇵", "🇰🇷", "🇰🇼", "🇰🇾", "🇰🇿", "🇱🇦", "🇱🇧", "🇱🇨", "🇱🇮", "🇱🇰", "🇱🇷", "🇱🇸", "🇱🇹", "🇱🇺", "🇱🇻", "🇱🇾", "🇲🇦", "🇲🇨", "🇲🇩", "🇲🇪", "🇲🇫", "🇲🇬", "🇲🇭", "🇲🇰", "🇲🇱", "🇲🇲", "🇲🇳", "🇲🇴", "🇲🇵", "🇲🇶", "🇲🇷", "🇲🇸", "🇲🇹", "🇲🇺", "🇲🇻", "🇲🇼", "🇲🇽", "🇲🇾", "🇲🇿", "🇳🇦", "🇳🇨", "🇳🇪", "🇳🇫", "🇳🇬", "🇳🇮", "🇳🇱", "🇳🇴", "🇳🇵", "🇳🇷", "🇳🇺", "🇳🇿", "🇴🇲", "🇵🇦", "🇵🇪", "🇵🇫", "🇵🇬", "🇵🇭", "🇵🇰", "🇵🇱", "🇵🇲", "🇵🇳", "🇵🇷", "🇵🇸", "🇵🇹", "🇵🇼", "🇵🇾", "🇶🇦", "🇷🇪", "🇷🇴", "🇷🇸", "🇷🇺", "🇷🇼", "🇸🇦", "🇸🇧", "🇸🇨", "🇸🇩", "🇸🇪", "🇸🇬", "🇸🇭", "🇸🇮", "🇸🇯", "🇸🇰", "🇸🇱", "🇸🇲", "🇸🇳", "🇸🇴", "🇸🇷", "🇸🇸", "🇸🇹", "🇸🇻", "🇸🇽", "🇸🇾", "🇸🇿", "🇹🇦", "🇹🇨", "🇹🇩", "🇹🇫", "🇹🇬", "🇹🇭", "🇹🇯", "🇹🇰", "🇹🇱", "🇹🇲", "🇹🇳", "🇹🇴", "🇹🇷", "🇹🇹", "🇹🇻", "🇹🇼", "🇹🇿", "🇺🇦", "🇺🇬", "🇺🇲", "🇺🇸", "🇺🇾", "🇺🇿", "🇻🇦", "🇻🇨", "🇻🇪", "🇻🇬", "🇻🇮", "🇻🇳", "🇻🇺", "🇼🇫", "🇼🇸", "🇽🇰", "🇾🇪", "🇾🇹", "🇿🇦", "🇿🇲", "🇿🇼"]

    
    @State var name = ""
    @State var emailAddress = ""
    @State var phoneNumber = ""
    @State var rooms = 0
    
    @State var country = ""
    
    
    var body: some View {
        
        ZStack {
            
            Color.orange.opacity(0.35).ignoresSafeArea()
            
            
            VStack {
                
                HStack(spacing: 60) {
                    
                    Button {
                        
                        
                    } label: {
                        
                        Image(systemName: "chevron.left.square.fill").resizable().frame(width: 30, height: 30, alignment: .leading).foregroundColor(.primary)
                        
                    }
                    
                    Text("Pan Pacific Hotel").font(.title3).fontWeight(.semibold)
                    
                }.padding(.trailing, 90)
                
            }.padding(.bottom, 700)
            
            
            VStack {
                
                RoundedRectangle(cornerRadius: 0, style: .continuous).frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height + 30, alignment: .center).foregroundColor(.white).opacity(0.55).overlay(alignment: .center) {
                    
                    
                    VStack {
                        
                        VStack {
                            
                            Image("hotel-1").resizable().frame(width: UIScreen.main.bounds.width - 20, height: 250, alignment: .center).cornerRadius(23, corners: [.topLeft, .topRight])
                            
                            HStack(spacing: 25) {
                                
                                VStack {
                                    
                                    Text("Pan Pacific Hotel").font(.headline).fontWeight(.semibold).foregroundColor(.primary)
                                    Text("Dhaka, Bangladesh").font(.footnote).fontWeight(.semibold).foregroundColor(.gray)
                                    
                                }
                                
                                HStack(spacing: 5) {
                                    
                                    Image(systemName: "star.fill").foregroundColor(.blue)
                                    Text("4.9 (5.6k reviews)").fontWeight(.semibold)
                                    
                                }
                                
                                
                            }.padding(.bottom, 20)
                            
                           
                            
                            VStack(spacing: -10) {
                                
                                Text("Name").font(.headline).fontWeight(.semibold).padding(.trailing, 290)
                                TextField("Name", text: $name).padding().overlay {
                                    RoundedRectangle(cornerRadius: 10.0).strokeBorder(style: StrokeStyle(lineWidth: 2))
                                }.padding().font(.headline).fontWeight(.semibold)
                                
                            }.offset(x: 0, y: -18)
                            
                            VStack(spacing: -10) {
                                
                                Text("Email Address").font(.headline).fontWeight(.semibold).padding(.trailing, 230)
                                TextField("Email", text: $emailAddress).padding().overlay {
                                    RoundedRectangle(cornerRadius: 10.0).strokeBorder(style: StrokeStyle(lineWidth: 2))
                                }.padding().font(.headline).fontWeight(.semibold)
                                
                            }.offset(x: 0, y: -25)
                            
                            VStack(spacing: -10) {
                                
                                
                                
                                Text("Phone Number").font(.headline).fontWeight(.semibold).padding(.trailing, 225)
                                
                                
                                HStack {
                                    
                                    HStack(spacing: 19) {
                                        
                                        Menu {
                                            
                                            
                                            ForEach(countries, id: \.self) { number in
                                                
                                                Button {
                                                    
                                                    country = number
                                                    
                                                } label: {
                                                    
                                                    Text(number)
                                                    
                                                }
                                                
                                                
                                            }
                                            
                                        } label: {
                                            
                                            HStack(spacing: 10) {
                                                
                                                Image(systemName: "flag.fill").resizable().frame(width: 25, height: 25, alignment: .center).foregroundColor(.black)
                                                
                                                Text(country).font(.largeTitle)
                                                
                                                
                                            }.offset(x: 20, y: 2)
                                            
                                        }
                                        
                                        
                                        TextField("Phone Number", text: $phoneNumber).padding().overlay {
                                            RoundedRectangle(cornerRadius: 10.0).strokeBorder(style: StrokeStyle(lineWidth: 2)).keyboardType(.numberPad)
                                            
                                            
                                            
                                        }.frame(width: UIScreen.main.bounds.width - 130, height: 50, alignment: .center).padding().font(.headline).fontWeight(.semibold)
                                        
                                    }
                                    
                                }
                                
                                HStack {
                                    
                                    
                                    Stepper(value: $rooms) {
                                        Text("Room: \(rooms)").font(.headline).fontWeight(.semibold)
                                    }.padding()
                                    
                                }
                                
                                Button {
                                    
                                    
                                } label: {
                                    
                                    RoundedRectangle(cornerRadius: 10.0).frame(width: UIScreen.main.bounds.width - 20, height: 40, alignment: .center).foregroundColor(.primary).overlay {
                                        
                                        Text("Procced to pay").font(.headline).fontWeight(.semibold).foregroundColor(.white)
                                        
                                    }
                                    
                                }.padding(.bottom, 120)
                                
                            }.offset(x: 0, y: -35)
                            
                            
                        }
                        
                    }
                    
                    
                    
                }.padding(.top, 200)
                
            }
            
        }
        
        
        
    }
    
}

struct ScreenView5_Previews: PreviewProvider {
    static var previews: some View {
        ScreenView5()
    }
}
