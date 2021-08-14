//
//  HomeViewModel.swift
//  iOS Local DB
//
//  Created by Yusuf Saifudin on 25/07/21.
//

import Foundation
import ObjectBox

class HomeViewModel: ObservableObject {
    
    @Published var users = [UserDb]()
    var userBox: Box<UserDb>? = nil
    
    init() {
        do {
            let store = try AppBox.boxInit(dbName: Constants.dbName)
            userBox = store.box(for: UserDb.self)
        } catch {
            print("HomeViewModel # error init \(error)")
        }
    }
    
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
