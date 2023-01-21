//
//  LazyGridDetails.swift
//  travel Booking app
//
//  Created by Abdullah Aloufi on 28/06/1444 AH.
//

import SwiftUI

struct LazyGridDetails: View {
    let items = 1...12
    let item1 = ["person.bust.fill" , "person.bust.fill","person.bust.fill", "person.bust.fill" , "person.bust.fill","person.bust.fill",]

    let rows = [
        GridItem(.fixed(50)),
        GridItem(.fixed(50)),
        GridItem(.fixed(50)),
        GridItem(.fixed(50))
    ]
    
    let columns = [
            GridItem(.adaptive(minimum: 10))
        ]

    var body: some View {
       
                LazyHGrid(rows: rows, alignment: .center){
                    ForEach(items, id: \.self) { item in
                        Image(systemName: "\(item).circle.fill")
                            .font(.largeTitle)
                            .border(.white)
                            .padding()
                    }
                
            }
            .frame(height: 250)
        
    }

}

struct LazyGridDetails_Previews: PreviewProvider {
    static var previews: some View {
        LazyGridDetails()
    }
}
