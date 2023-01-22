//
//  Costom.swift
//  assamt10
//
//  Created by Abudulaziz on 28/06/1444 AH.
//

import SwiftUI

struct Costom: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct Costom_Previews: PreviewProvider {
    static var previews: some View {
        Costom()
    }
}

struct CustomTextField: View{
    var placeHolder: String
    var imgeName: String
    var bCoolor: String
    var tOpacity: Double
    @Binding var value: String
    
    var body: some View{
        HStack{
            Image(systemName: imgeName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 20, height: 20)
                .foregroundColor(Color(bCoolor).opacity(tOpacity))
//            ----
            if placeHolder == "Password" || placeHolder == "ConfirmvPassWord"{
                ZStack (alignment: .leading){
                    if value.isEmpty {
                        Text(placeHolder)
                            .foregroundColor(Color(bCoolor).opacity(tOpacity))
                            .padding(.leading , 12)
                            .font(.system(size: 20))
                    }
                    SecureField("", text: $value)
                        .padding(.leading , 12)
                        .font(.system(size: 20))
                        .frame(height: 45)
                }
            }
            else{
                ZStack (alignment: .leading){
                    if value.isEmpty{
                        Text(placeHolder)
                            .foregroundColor(Color(bCoolor).opacity(tOpacity))
                            .padding(.leading , 12)
                            .font(.system(size: 20))
                        
                    }
                    TextField("", text: $value)
                        .padding(.leading , 12)
                        .font(.system(size: 20))
                        .frame(height: 45)
                        .foregroundColor(Color(bCoolor))
                    }
               
            }
                
//            SecureField("", text: $value)
//                .padding(.leading , 12)
//                .font(.system(size: 20))
//                .frame(height: 45)
//                .overlay(Color(bCoolor.opacity(tOpacity))).padding(.horizontal, 20)
//            , alignment: .bottom
               

        }
        .overlay(
            Divider()
                .overlay(
                    Color(bCoolor).opacity(tOpacity)).padding(.horizontal, 20), alignment: .bottom
        )
        
    }
    
    
    
    struct CustomButton: View {
        
        var title: String
        var bgColor: String
        
        var body: some View {
            Text("title")
                .fontWeight(.bold)
                .foregroundColor(.white)
                .frame(height: 58)
                .frame(minWidth: 0, maxWidth: .infinity)
                .background(Color(bgColor))
                .cornerRadius(15)
        }
    }
}
