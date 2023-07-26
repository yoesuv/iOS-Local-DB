//
//  HomeViewModel.swift
//  iOS Local DB
//
//  Created by Yusuf Saifudin on 25/07/21.
//

import Foundation
import ObjectBox

class HomeViewModel: BoxService, ObservableObject  {
    
    @Published var users = [UserDb]()
    
    func loadUsers() {
        let userBox = self.store?.box(for: UserDb.self)
        if let box = userBox {
            do {
                print("HomeViewModel # user count \(try box.all().count)")
                users = try box.all()
            } catch {
                print("HomeViewModel # error load users \(error)")
            }
        }
    }
    
    func deleteUser(id: UInt64) {
        let userBox = self.store?.box(for: UserDb.self)
        if let box = userBox {
            do {
                try box.remove(id)
            } catch {
                print("HomeViewModel # error delete user \(error)")
            }
        }
    }
    
    func deleteAllUser() {
        let userBox = self.store?.box(for: UserDb.self)
        if let box = userBox {
            do {
                try box.removeAll()
            } catch {
                print("HomeViewModel # error delete all user \(error)")
            }
        }
    }
    
}
