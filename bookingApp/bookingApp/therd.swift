//
//  therd.swift
//  bookingApp
//
//  Created by Sara Alahmdi on 28/06/1444 AH.
//

import SwiftUI

struct therd: View {
    @State var  selection: String = "1"
    var body: some View {
        VStack{
            HStack{
                Text("Room")
                Text(selection)
            }
            Picker (selection: $selection, label:Text("Room") ,content: ForEach(1..<6) { number in
                    Text("\(number)")
                        .tag("\(number)")
                })
            
            }
        }
    }
struct therd_Previews: PreviewProvider {
    static var previews: some View {
        therd()
    }
}
