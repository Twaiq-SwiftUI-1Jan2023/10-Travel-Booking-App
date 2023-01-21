//
//  Test.swift
//  Assignment-10
//
//  Created by ahmed alharbi on 28/06/1444 AH.
//

import SwiftUI

struct Test: View {
    var body: some View {

        TabView{
            Circle()
            
                .tabItem {
                    Text("first tab")
                }
            Circle()
                .foregroundColor(.purple)
            
                .tabItem {
                    Text("second tab")
                }
            
        }
        
        
        
    }
}

struct Test_Previews: PreviewProvider {
    static var previews: some View {
        Test()
    }
}
