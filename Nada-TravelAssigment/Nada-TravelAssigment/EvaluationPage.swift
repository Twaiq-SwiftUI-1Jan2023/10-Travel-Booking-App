//
//  EvaluationPage.swift
//  Nada-TravelAssigment
//
//  Created by N on 20/01/2023.
//

import SwiftUI

struct EvaluationPage: View {
    var body: some View {
        ZStack{
            Color("c1").ignoresSafeArea()
            
            
            VStack{
                HStack{
                    Button{}
                label: {
                    Image(systemName: "arrow.backward.square")
                        .font(.system(size: 25))
                        .foregroundColor(.white)
                        .padding(.leading)
                }
                    Spacer()
                    Text("My Trips")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .bold()
                        .foregroundColor(.white)
                        .padding(.trailing , 150)
                }//end of h stack
                ZStack{
                    RoundedRectangle(cornerRadius: 80)
                        .fill(Color(UIColor.secondarySystemBackground)).ignoresSafeArea()
                    VStack{
                        Text("Rate your Stay")
                            .font(.title2)
                            .fontWeight(.semibold)
                            .bold()
                            .foregroundColor(.gray)
                            .padding(.trailing , 200).padding(.top ,50)
                        HStack {
                            Image(systemName: "star.fill")
                            Image(systemName: "star.fill")
                            Image(systemName: "star.fill")
                            Image(systemName: "star.fill")
                            Image(systemName: "star")

                        }.padding(.bottom).padding(.trailing , 200)
                        Text("Tour Review")
                            .font(.title3)
                            .fontWeight(.semibold)
                            .bold()
                            .foregroundColor(.gray)
                            .padding(.trailing , 200)
                        
                        ZStack {
                            RoundedRectangle(cornerRadius: 30)
                                .fill(.white)
                            .frame(width: 350 , height: 200)
                            TextField("Write your stay experience here", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                                .frame(width: 350 , height: 200)
                         
                        }
                        Spacer()
                        ZStack{
                           
                            RoundedRectangle(cornerRadius: 20)
                                .fill(Color("c1"))
                                .frame(width: 300 , height: 40)
                            
                            Button("Submit Tour Review") {
                               
                            }.foregroundColor(.white)
                                .padding()
                            
                        }//end of z stack button
                    }
                }
            }//end of Vstack
        }
    }
}

struct EvaluationPage_Previews: PreviewProvider {
    static var previews: some View {
        EvaluationPage()
    }
}
