//
//  screen8.swift
//  homework ass10
//
//  Created by MAJEDAH on 29/06/1444 AH.
//

import SwiftUI

struct screen8: View {
    var body: some View {
        VStack(spacing: 30){
            HStack(spacing: 90){
                Image(systemName: "arrowshape.left.fill")
                        .foregroundColor(Color.gray)
                    Text("crowne plaza Hotel")
                        .foregroundColor(Color.gray)
                Spacer()
            }
          
            Text("Rate your stay")
            HStack{
                Image(systemName: "star.fill")
                    .foregroundColor(Color.yellow)
                Image(systemName: "star.fill")
                    .foregroundColor(Color.yellow)
                Image(systemName: "star.fill")
                    .foregroundColor(Color.yellow)
                Image(systemName: "star.fill")
                    .foregroundColor(Color.yellow)
                Image(systemName: "star")
                    .foregroundColor(Color.yellow)
            }
            Text("your review")
           
            TextEditor(text: .constant("Writr yoour stay experience here"))
                .foregroundColor(Color.gray)
                .padding()
                .background(ContentView.wall)
            
            Button {
            }label: {
                Text("Submit your Review")
                    .padding()
                    .foregroundColor(Color.white)
                    .background(ContentView.wall)
                
            }
            Text(" ")
        }
        
    
        }
}

struct screen8_Previews: PreviewProvider {
    static var previews: some View {
        screen8()
    }
}
