//
//  ContentView.swift
//  assamtp2
//
//  Created by Abudulaziz on 29/06/1444 AH.
//

import SwiftUI

struct ContentView: View {
    @State private var search: String = ""
    var body: some View {
        GeometryReader { geometry in
            NavigationView {
                ZStack{
                    Color("background").ignoresSafeArea()
                    ScrollView(showsIndicators: false){
                        VStack (alignment: .leading){
                            TopBarView()
                            SlonganView()
                            
                            SearchView(search: $search )
                                .padding(.vertical)
                            ScrollView(.horizontal, showsIndicators: false) {
                                HStack(spacing: 20) {
                                    ForEach(0..<10) {
                                        Text("Item \($0)")
                                            .foregroundColor(.white)
                                            .font(.largeTitle)
                                            .frame(width: 120, height: 120)
                                            .background()
                                        
                                        
                                       
                                    }
                                }
                                
                            }
                        
                        }
                        
                    }
                }
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct TopBarView: View{
    var body: some View {
        HStack{
            Button(action: {}, label: {
                Image("dots")
                
                    .padding(.all , 10)
                    .background(Color.white)
                    .cornerRadius(10.0)
                    .foregroundColor(Color("primary"))
                    .font((.system(size: 20)))
                
            })
            Spacer()
            Button(action: {}, label: {
                Image("person")
                    .resizable()
                    .frame(width: 35, height: 35)
                    .background(Color.white)
            })
            .cornerRadius(10.0)
            
        }
        .padding(.horizontal)
    }
}
struct SlonganView: View{
    var body: some View{
        Text("lets Expiore \n The World")
            .font(.system(size: 28))
            .fontWeight(.regular)
            .foregroundColor(Color("primary"))
            .padding(.leading)
            
        
    
    }
}

struct SearchView: View {
    @Binding var search: String
    var body: some View {
        HStack{
            Image(systemName: "magnifyingglass")
                .padding(.trailing, 8)
                .foregroundColor(Color("primary"))
            TextField("Search", text: $search )
        }
        .padding(.all, 15)
        .background(Color.white)
        .cornerRadius(10)
        .padding(.horizontal)
    }
}

struct CategoriesView: View{
    let isActive: Bool
    let text: String
    var body: some View{
        VStack{
            Text("text")
                .font(.system(size: 20))
                .padding(.all, 15)
                .frame(minWidth: 90)
//                .foregroundColor()
        }
    }
}
