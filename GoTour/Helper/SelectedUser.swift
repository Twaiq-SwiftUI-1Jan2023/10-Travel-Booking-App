//
//  UserDefaults.swift
//  GoTour
//
//  Created by Amer Alyusuf on 22/01/2023.
//

import Foundation

class SelectedUser: ObservableObject {
    @Published var selectedUser: Int? = UserDefaults.standard.integer(forKey: "selectedUser") {
        didSet {
            UserDefaults.standard.set(selectedUser, forKey: "selectedUser")
        }
    }
    
    func getUser() -> Int? {
        return selectedUser
    }
}
