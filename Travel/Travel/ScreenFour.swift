//
//  ScreenFour.swift
//  Travel
//
//  Created by Batool on 21/1/2023.
//

import SwiftUI

struct ScreenFour: View {
    @State var email: String = ""
    @State var name: String = ""
    @State var number: String = ""
    static let Sky = Color("sky")
    static let Sys = Color("sys")
    var body: some View {
        VStack {
            ScreenFour.Sky
                .ignoresSafeArea()

            HStack {
                Button {
                    
                } label: {
                    Image(systemName: "arrow.left")
                }.foregroundColor(Color.white)
                .font(.system(size: 20))
                .offset(x: -90, y: -35)
                
                
                Text ("Ritz Carlton Hotel")
                    .fontWeight(.semibold)
                .foregroundColor(Color.white)
                .offset(x: -18, y: -35)
                
            }
            Image ("ritz")
                .resizable()
                .scaledToFit()
                .cornerRadius(20)
                .frame(width: 350, height: 250, alignment: .center)
                .offset(x: 0, y: -20)
            Text ("Ritz Carlton Hotel")
                .font(.title2)
                .fontWeight(.medium)
                .multilineTextAlignment(.leading)
                .offset(x: 0, y: -15)

            HStack (spacing : 110) {
                Text ("Riyadh, Saudi Arabia")
                    .font(.caption)
                    .foregroundColor(Color.gray)
                    .multilineTextAlignment(.leading)
                Text ("★ 4.9 (5.6k reviews)")
                    .font(.caption)
                    .foregroundColor(Color.gray)
                    .multilineTextAlignment(.trailing)
            }
            Group {
                Text("Name")
                    .foregroundColor(Color.gray)
                    .multilineTextAlignment(.leading)
                    .offset(x: -150, y: 15)
                
                
                TextField("First Last", text: $name)
                    .frame(width: 350, height: nil)
                    .padding(.all, 5)
                    .textFieldStyle(.roundedBorder)
                    .font(Font.system(size: 20, design: .default))
                    .multilineTextAlignment(.leading)
                    .offset(x: 0, y: 10)
                
                Text("Email Address")
                    .foregroundColor(Color.gray)
                    .multilineTextAlignment(.leading)
                    .offset(x: -115, y: 10)
                
                
                
                TextField("example@gmail.com", text: $email)
                    .frame(width: 350, height: nil)
                    .padding(.all, 5)
                    .textFieldStyle(.roundedBorder)
                    .font(Font.system(size: 20, design: .default))
                    .multilineTextAlignment(.leading)
                    .offset(x: 0, y: 5)
                
                
                Text("Phone Number")
                    .foregroundColor(Color.gray)
                    .multilineTextAlignment(.leading)
                    .offset(x: -115, y: 10)
                
                
                TextField("+966500000000", text: $number)
                    .frame(width: 350, height: nil)
                    .padding(.all, 5)
                    .textFieldStyle(.roundedBorder)
                    .font(Font.system(size: 20, design: .default))
                    .multilineTextAlignment(.leading)
                    .offset(x: 0, y: 5)
            
            Text("Room's Required")
                .foregroundColor(Color.gray)
                .multilineTextAlignment(.leading)
                .offset(x: -110, y: 5)
            
                HStack (spacing : 20) {
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .fill(ScreenFour.Sys)
                            .frame(width: 165, height: 50)
                        
                        Image(systemName: "chevron.down")
                            .offset(x: 60, y: 0)
                            .foregroundColor(ScreenFour.Sky)
                        
                        Text ("05 Guest")
                            .foregroundColor(Color.gray)
                            .offset(x: -30, y: 0)
                    }
                    
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .fill(ScreenFour.Sys)
                            .frame(width: 165, height: 50)
                        
                        Image(systemName: "plus")
                            .offset(x: 60, y: 0)
                            .foregroundColor(ScreenFour.Sky)
                        
                        Text ("2 Rooms")
                            .foregroundColor(Color.gray)
                        
                        Image(systemName: "minus")
                            .offset(x: -60, y: 0)
                            .foregroundColor(ScreenFour.Sky)
                    }
                }.offset(x: 0, y: 5)
            }
            
            Button ("Procced to Pay") {
            }.frame(width: 350, height: 50, alignment: .center).background(ScreenOne.Sky).cornerRadius(15).foregroundColor(Color.white).bold()
                .offset(x: 0, y: 10)
        }
    }
}

struct ScreenFour_Previews: PreviewProvider {
    static var previews: some View {
        ScreenFour()
    }
}
