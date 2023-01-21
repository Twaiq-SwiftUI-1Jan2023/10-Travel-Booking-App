//
//  ShapeRect.swift
//  Assignment-10
//
//  Created by ahmed alharbi on 28/06/1444 AH.
//

import SwiftUI

struct ShapeRect: View {
    var body: some View {
        ZStack {
            Rectangle()
                .frame(width: 300,height: 160)
            .cornerRadius(15)
            .foregroundColor(.blue)
            HStack(spacing: 80) {
                Image(systemName: "person")
                
                VStack(alignment: .leading, spacing: 40) {
                    Text("Hello")
                        .font(.title2)
                    HStack{
                        VStack(alignment: .leading){
                            Text("Check-in")
                                .foregroundColor(.green)
                                .padding(.trailing)
                            Text("Sat,Aug 21")
                                .padding(.trailing)
                        }
                        VStack(alignment: .leading){
                            Text("Check-in")
                                .foregroundColor(.red)
                                .padding(.trailing)
                            Text("Sat,Aug 21")
                                .padding(.trailing)
                        }
                    }
                }
            }
            
        }
    }
}

struct ShapeRect_Previews: PreviewProvider {
    static var previews: some View {
        ShapeRect()
    }
}
