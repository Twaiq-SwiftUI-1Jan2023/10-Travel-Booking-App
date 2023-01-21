//
//  ViewFour.swift
//  Assignment-10
//
//  Created by ahmed alharbi on 28/06/1444 AH.
//

import SwiftUI

struct ViewFour: View {
    @State private var selectedChoice = 0
    var body: some View {
        ZStack{
            Color("light-green")
                .edgesIgnoringSafeArea(.top)
            Color.white
                .frame(height: 750).padding(.top,200)
            VStack {
                HStack(spacing: 90){
                    Button {
                        
                    } label: {
                        Image(systemName: "arrow.left")
                            .padding()
                            .bold()
                            .font(.title3)
                    }

                    Text("My Trips")
                        .bold()
                        .font(.title3)
                }.padding(.trailing,160).frame(height: 40).foregroundColor(.white)
            }.frame(height: 150).padding(.top,-420)
            VStack {
                Picker(selection: $selectedChoice, label: Text("Select a choice")) {
                        Text("Upcoming").tag(0)
                        Text("Completed").tag(1)
                        Text("Cancelled").tag(2)
                    }
                .pickerStyle(SegmentedPickerStyle()).background(Color("light-green"))
            }.padding(.top,-300)
            
            
        }
    }
    
    struct ViewFour_Previews: PreviewProvider {
        static var previews: some View {
            ViewFour()
        }
    }
}
