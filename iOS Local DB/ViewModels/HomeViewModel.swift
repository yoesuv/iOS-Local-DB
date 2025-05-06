//
//  HomeViewModel.swift
//  iOS Local DB
//
//  Created by Yusuf Saifudin on 25/07/21.
//

import Foundation

class HomeViewModel: ObservableObject  {
    
    @Published var users = [UserDb]()
    let userBox = BoxService.shared.box(entity: UserDb.self)
    
    func loadUsers() {
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
        if let box = userBox {
            do {
                try box.remove(id)
            } catch {
                print("HomeViewModel # error delete user \(error)")
            }
        }
    }
    
    func deleteAllUser() {
        if let box = userBox {
            do {
                try box.removeAll()
            } catch {
                print("HomeViewModel # error delete all user \(error)")
            }
        }
    }
    
}
