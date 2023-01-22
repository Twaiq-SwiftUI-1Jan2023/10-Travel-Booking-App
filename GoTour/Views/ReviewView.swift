//
//  ReviewView.swift
//  GoTour
//
//  Created by Amer Alyusuf on 20/01/2023.
//

import SwiftUI

struct ReviewView: View {
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State private var longText: String = "Write your stay experience here"
    
    var body: some View {
        ZStack {
            Colors.topaz
                .ignoresSafeArea(.all, edges: .top)
            VStack {
                HStack {
                    Text("Write a Review")
                        .font(.largeTitle)
                        .bold()
                        .foregroundColor(Colors.white)
                }
                .padding(.top, 50)
                
                VStack {
                    ZStack {
                        Colors.paleGrey
                        
                        VStack(spacing: 20) {
                            HStack(spacing: 0) {
                                Text("Rate Your Stay")
                                    .font(.title)
                                    .foregroundColor(Colors.black)
                                    .bold()
                                
                                Spacer()
                            }
                            
                            HStack {
                                Button(action: {}) {
                                    Text("⭐️")
                                        .font(.largeTitle)
                                }
                                Button(action: {}) {
                                    Text("⭐️")
                                        .font(.largeTitle)
                                }
                                Button(action: {}) {
                                    Text("⭐️")
                                        .font(.largeTitle)
                                }
                                Button(action: {}) {
                                    Text("⭐️")
                                        .font(.largeTitle)
                                }
                                Button(action: {}) {
                                    Text("⭐️")
                                        .font(.largeTitle)
                                }
                                Spacer()
                            }
                            
                            HStack(spacing: 0) {
                                Text("Your Review")
                                    .font(.title)
                                    .foregroundColor(Colors.black)
                                    .bold()
                                Spacer()
                            }
                            
                            TextEditor(text: $longText)
                                .scrollContentBackground(.hidden)
                                .background(Colors.white)

                                     
                            Spacer()
                            
                            Button(action: { self.presentationMode.wrappedValue.dismiss() }) {
                                ZStack {
                                    RoundedRectangle(cornerRadius: 20)
                                        .foregroundColor(Colors.topaz)
                                        .frame(height: 80)
                                        .padding(.horizontal)
                                    Text("Submit your Review")
                                        .foregroundColor(Colors.white)
                                        .font(.title3)
                                        .bold()
                                }
                            }
                        }
                        .padding()
                    }
                }
            }
        }
    }
}

struct ReviewView_Previews: PreviewProvider {
    static var previews: some View {
        ReviewView()
    }
}
