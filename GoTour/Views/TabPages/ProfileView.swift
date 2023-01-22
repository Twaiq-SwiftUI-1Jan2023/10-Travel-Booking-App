//
//  ProfileView.swift
//  GoTour
//
//  Created by Amer Alyusuf on 21/01/2023.
//

import SwiftUI

struct ProfileView: View {
    
    var users = User.users
    
    var body: some View {
        ZStack {
            Colors.topaz
                .ignoresSafeArea(.all, edges: .top)
            VStack {
                HStack {
                    Text("Select a user")
                        .font(.largeTitle)
                        .bold()
                        .foregroundColor(Colors.white)
                }
                .padding(.top, 50)
                
                VStack {
                    ZStack {
                        Colors.paleGrey
                        ScrollView {
                            ForEach(users) { user in  
                                Button {
                                    UserDefaults.standard.set(user.id, forKey: "selectedUser")
                                } label: {
                                    HStack {
                                        VStack {
                                            Text(user.name)
                                        }
                                        Spacer()
                                        user.image
                                    }
                                    .font(.title)
                                    .padding()
                                }
                                .foregroundColor(Colors.black)
                                Divider()
                            }
                        }
                        .padding()
                    }
                }
            }
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
