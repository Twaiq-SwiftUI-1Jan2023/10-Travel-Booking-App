//
//  ScreenView4.swift
//  Project 4
//
//  Created by RMP on 28/06/1444 AH.
//

import SwiftUI

struct ScreenView4: View {
    
    
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
                            
                            HStack {
                                
                                Button {
                                    
                                    
                                } label: {
                                    
                                    Text("Details").font(.headline).foregroundColor(.primary)
                                    
                                }
                                
                                Button {
                                    
                                    
                                } label: {
                                    
                                    Text("Facilities").font(.headline).foregroundColor(.primary)
                                    
                                }
                                
                                Button {
                                    
                                    
                                } label: {
                                    
                                    Text("Reviews").font(.headline).foregroundColor(.primary)
                                    
                                }
                                
                                HStack {
                                    
                                    Button {
                                        
                                        
                                    } label: {
                                        
                                        Text("Directions").font(.headline).foregroundColor(.primary)
                                        
                                    }
                                    
                                }.padding(.leading, 50)
                                
                            }
                            
                        }.padding(.bottom, 20)
                        
                        VStack {
                            
                            HStack(spacing: 33) {
                                
                                
                                VStack {
                                    
                                    Button {
                                        
                                        
                                    } label: {
                                        
                                        Image(systemName: "house.fill").resizable().aspectRatio(contentMode: .fit).frame(width: 40, height: 40, alignment: .center).padding(9).background(Color(red: 23 / 255, green: 255 / 255, blue: 238 / 255, opacity: 1)).foregroundColor(.orange).cornerRadius(40).shadow(radius: 10)
                                        
                                        
                                    }
                                    
                                    Text("Rooms").font(.callout).fontWeight(.semibold).foregroundColor(.primary)
                                    
                                }
                                
                                VStack {
                                    
                                    Button {
                                        
                                        
                                    } label: {
                                        
                                        Image(systemName: "air.conditioner.horizontal.fill").resizable().aspectRatio(contentMode: .fit).frame(width: 40, height: 40, alignment: .center).padding(9).background(Color(red: 23 / 255, green: 255 / 255, blue: 238 / 255, opacity: 1)).foregroundColor(.gray).cornerRadius(40).shadow(radius: 10)
                                        
                                        
                                    }
                                    
                                    Text("AC").font(.callout).fontWeight(.semibold).foregroundColor(.primary)
                                    
                                }
                                
                                VStack {
                                    
                                    Button {
                                        
                                        
                                    } label: {
                                        
                                        Image(systemName: "engine.combustion.fill").resizable().aspectRatio(contentMode: .fit).frame(width: 40, height: 40, alignment: .center).padding(9).background(Color(red: 23 / 255, green: 255 / 255, blue: 238 / 255, opacity: 1)).foregroundColor(.blue).cornerRadius(40).shadow(radius: 10)
                                        
                                    }
                                    
                                    Text("Engine").font(.callout).fontWeight(.semibold).foregroundColor(.primary)
                                    
                                }
                                
                                VStack {
                                    
                                    Button {
                                        
                                        
                                    } label: {
                                        
                                        Image(systemName: "parkingsign.circle.fill").resizable().aspectRatio(contentMode: .fit).frame(width: 40, height: 40, alignment: .center).padding(9).background(Color(red: 23 / 255, green: 255 / 255, blue: 238 / 255, opacity: 1)).foregroundColor(.yellow).cornerRadius(40).shadow(radius: 10)
                                        
                                        
                                    }
                                    
                                    
                                    Text("Parking").font(.callout).fontWeight(.semibold).foregroundColor(.primary)
                                    
                                    
                                }
                                
                                
                            }
                            
                            HStack(spacing: 33) {
                                
                                
                                VStack {
                                    
                                    Button {
                                        
                                        
                                    } label: {
                                        
                                        Image(systemName: "creditcard.fill").resizable().aspectRatio(contentMode: .fit).frame(width: 40, height: 40, alignment: .center).padding(9).background(Color(red: 23 / 255, green: 255 / 255, blue: 238 / 255, opacity: 1)).foregroundColor(.purple).cornerRadius(40).shadow(radius: 10)
                                        
                                        
                                    }
                                    
                                    Text("ATM").font(.callout).fontWeight(.semibold).foregroundColor(.primary)
                                    
                                }
                                
                                VStack {
                                    
                                    Button {
                                        
                                        
                                    } label: {
                                        
                                        Image(systemName: "fork.knife.circle.fill").resizable().aspectRatio(contentMode: .fit).frame(width: 40, height: 40, alignment: .center).padding(9).background(Color(red: 23 / 255, green: 255 / 255, blue: 238 / 255, opacity: 1)).foregroundColor(Color.yellow.opacity(0.55)).cornerRadius(40).shadow(radius: 10)
                                        
                                        
                                    }
                                    
                                    Text("Meals").font(.callout).fontWeight(.semibold).foregroundColor(.primary)
                                    
                                }
                                
                                VStack {
                                    
                                    Button {
                                        
                                        
                                    } label: {
                                        
                                        Image(systemName: "microwave.fill").resizable().aspectRatio(contentMode: .fit).frame(width: 40, height: 40, alignment: .center).padding(9).background(Color(red: 23 / 255, green: 255 / 255, blue: 238 / 255, opacity: 1)).foregroundColor(.red).cornerRadius(40).shadow(radius: 10)
                                        
                                    }
                                    
                                    Text("Foods").font(.callout).fontWeight(.semibold).foregroundColor(.primary)
                                    
                                }
                                
                                VStack {
                                    
                                    Button {
                                        
                                        
                                    } label: {
                                        
                                        Image(systemName: "dot.radiowaves.up.forward").resizable().aspectRatio(contentMode: .fit).frame(width: 40, height: 40, alignment: .center).padding(9).background(Color(red: 23 / 255, green: 255 / 255, blue: 238 / 255, opacity: 1)).foregroundColor(.purple).cornerRadius(40).shadow(radius: 10)
                                        
                                        
                                    }
                                    
                                    
                                    Text("WiFi").font(.callout).fontWeight(.semibold).foregroundColor(.primary)
                                    
                                    
                                }
                                
                                
                            }
                            
                            HStack(spacing: 33) {
                                
                                
                                VStack {
                                    
                                    Button {
                                        
                                        
                                    } label: {
                                        
                                        Image(systemName: "stethoscope").resizable().aspectRatio(contentMode: .fit).frame(width: 40, height: 40, alignment: .center).padding(9).background(Color(red: 23 / 255, green: 255 / 255, blue: 238 / 255, opacity: 1)).foregroundColor(.pink).cornerRadius(40).shadow(radius: 10)
                                        
                                        
                                    }
                                    
                                    Text("Care").font(.callout).fontWeight(.semibold).foregroundColor(.primary)
                                    
                                }
                                
                                VStack {
                                    
                                    Button {
                                        
                                        
                                    } label: {
                                        
                                        Image(systemName: "figure.run").resizable().aspectRatio(contentMode: .fit).frame(width: 40, height: 40, alignment: .center).padding(9).background(Color(red: 23 / 255, green: 255 / 255, blue: 238 / 255, opacity: 1)).foregroundColor(.black).cornerRadius(40).shadow(radius: 10)
                                        
                                        
                                    }
                                    
                                    Text("Sports").font(.callout).fontWeight(.semibold).foregroundColor(.primary)
                                    
                                }
                                
                                VStack {
                                    
                                    Button {
                                        
                                        
                                    } label: {
                                        
                                        Image(systemName: "tv.fill").resizable().aspectRatio(contentMode: .fit).frame(width: 40, height: 40, alignment: .center).padding(9).background(Color(red: 23 / 255, green: 255 / 255, blue: 238 / 255, opacity: 1)).foregroundColor(.orange).cornerRadius(40).shadow(radius: 10)
                                        
                                    }
                                    
                                    Text("TV").font(.callout).fontWeight(.semibold).foregroundColor(.primary)
                                    
                                }
                                
                                VStack {
                                    
                                    Button {
                                        
                                        
                                    } label: {
                                        
                                        Image(systemName: "chair.fill").resizable().aspectRatio(contentMode: .fit).frame(width: 40, height: 40, alignment: .center).padding(9).background(Color(red: 23 / 255, green: 255 / 255, blue: 238 / 255, opacity: 1)).foregroundColor(Color.green).cornerRadius(40).shadow(radius: 10)
                                        
                                        
                                    }
                                    
                                    
                                    Text("Balcony").font(.callout).fontWeight(.semibold).foregroundColor(.primary)
                                    
                                    
                                }
                                
                                
                            }
                            
                            ZStack {
                                
                                Color.orange.opacity(0.23)
                                
                                VStack {
                                    
                                    HStack(spacing: 50) {
                                        
                                        
                                        Text("$1200.0/night").font(.headline).fontWeight(.bold).padding(.trailing, 20)
                                        
                                        Button() {
                                            
                                            
                                        } label: {
                                            Text("Book Now").font(.headline).fontWeight(.semibold).foregroundColor(.white).padding().padding(.horizontal, 20).background(Color.black).cornerRadius(10).shadow(radius: 10)
                                        }
                                        
                                    }
                                    
                                }
                                
                            }.cornerRadius(6).frame(width: UIScreen.main.bounds.width - 20, height: 60, alignment: .center).padding(.top, 20)
                              
                            
                        }.padding(.bottom, 150)
                        
                    }
                    
                    
                    
                }.padding(.top, 200)
                
            }
            
        }
        
        
        
    }
}

struct ScreenView4_Previews: PreviewProvider {
    static var previews: some View {
        ScreenView4()
    }
}
