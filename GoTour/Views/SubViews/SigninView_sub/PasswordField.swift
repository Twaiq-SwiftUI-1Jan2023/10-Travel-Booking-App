//
//  PasswordField.swift
//  GoTour
//
//  Created by Amer Alyusuf on 1/21/23.
//

import SwiftUI

struct PasswordField: View {
    @Binding var password: String
    @Binding var showPass: Bool
    var text: String
    
    var body: some View {
        HStack {
            Text(text)
                .font(.title3)
                .foregroundColor(Colors.grey)
            Spacer()
        }
        .padding()
        
        HStack {
            Image(systemName: "lock")
                .foregroundColor(Colors.black)
                .padding(.leading, 8)
            
            Group {
                if showPass {
                    TextField(text, text: $password)
                } else {
                    SecureField(text, text: $password)
                }
            }
            .foregroundColor(Colors.black)
            .padding(.vertical, 8)

            Button {
                showPass.toggle()
            } label: {
                Image(systemName: showPass ? "eye" : "eye.slash")
                    .padding(.trailing, 8)
                    .foregroundColor(showPass ? Colors.black : Colors.grey)
            }
        }
        .background {
            RoundedRectangle(cornerRadius: 8)
                .foregroundColor(Colors.white)
        }
    }
}
