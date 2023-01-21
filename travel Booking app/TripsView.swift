//
//  TripsView.swift
//  travel Booking app
//
//  Created by Abdullah Aloufi on 28/06/1444 AH.
//

import SwiftUI

struct TripsView: View {
    @State var selected = 1
    var body: some View {
        ZStack{
            Color.orange
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
                    
                    Text("Trip")
                    Spacer()
                }
                .foregroundColor(Color.white)
                .padding(.horizontal)
                
                Picker (selection: $selected, label: Text("Picker"), content: {
                    Text("Previos Trips").tag(1)
                    Text("Completed").tag (2)
                    Text("Coming Trips").tag (3)
                })
                
                .pickerStyle(SegmentedPickerStyle())
                if selected == 1 {
                    List (0..<5) { item in
                        TripScrollView()
                            .scaledToFit()
                        
                    }
                    .listStyle(.grouped)
                }
                else if selected == 2 {
                    List (0..<10) { item in
                        TripPicker()
                            .scaledToFit()
                    }.listStyle(.sidebar)
                    
                }else{
                    List (0..<10) { item in
                        Text("Something imported to be here🫡🫡")
                        
                    }.listStyle(.sidebar)
                    
                }
                
            }
            
            
            
        }
    }
}

struct TripsView_Previews: PreviewProvider {
    static var previews: some View {
        TripsView()
    }
}
