//
//  SecureInputBox.swift
//  TravelBooking
//
//  Created by Abdulkarim Koshak on 1/21/23.
//

import SwiftUI

struct SecureInputBox: View {
    
    @State private var username = ""
    @State private var password = ""
    @State private var showPassword = false
    
    private var text: String
    private var isTextField: Bool
    
    init(text: String, isTextField: Bool) {
        self.text = text
        self.isTextField = isTextField
    }
    
    var body: some View {
        if isTextField {
            HStack {
                Image(systemName: "envelope").font(.system(size: 20))
                
                TextField(text, text: $username)
                    .font(Font.custom("Poppins-Light", size: 15))
            }
            .padding()
            .background(RoundedRectangle(cornerRadius: 16)
                .fill(Color.white))
        } else {
            HStack {
                Image(systemName: "exclamationmark.lock").font(.system(size: 20))
                
                if showPassword {
                    TextField(text, text: $password)
                        .font(Font.custom("Poppins-Light", size: 15))
                } else {
                    SecureField(text, text: $password)
                        .font(Font.custom("Poppins-Light", size: 15))
                }
                
                Button {
                    showPassword.toggle()
                } label: {
                    Image(systemName: showPassword ? "eye.fill" : "eye.slash.fill")
                }
                .foregroundColor(.gray)
            }
            .padding()
            .background(RoundedRectangle(cornerRadius: 16)
                .fill(Color.white))
        }
    }
    
}
