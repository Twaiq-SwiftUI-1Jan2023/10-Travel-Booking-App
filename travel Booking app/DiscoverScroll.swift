//
//  DiscoverScroll.swift
//  travel Booking app
//
//  Created by Abdullah Aloufi on 28/06/1444 AH.
//

import SwiftUI

struct DiscoverScroll: View {
    var body: some View {
        ScrollView(.horizontal) {
            VStack {
                HStack(spacing: 20) {
                    ForEach(1..<5) {i in
                        VStack {
                            ZStack {
                                Button{
                                    
                                }label: {
                                    Image("image\(i)")
                                        .resizable()
                                        .frame(width: 150 , height: 150)
                                        .cornerRadius(20)
                                    
                                }
                                
                                
                            }
                        }
                    }
                }
            }
            
        }
        
    }
}

struct DiscoverScroll_Previews: PreviewProvider {
    static var previews: some View {
        DiscoverScroll()
    }
}
