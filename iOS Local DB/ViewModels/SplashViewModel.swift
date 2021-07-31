//
//  SplashViewModel.swift
//  iOS Local DB
//
//  Created by Yusuf Saifudin on 31/07/21.
//

import Foundation

class SplashViewModel: ObservableObject {
    
    private let service = NetworkService()
    
    func loadUsers() {
        service.fetchUsers { users in
            if let data = users {
                print("SplashViewModel # users count \(data.count)")
            }
        }
    }
    
}
