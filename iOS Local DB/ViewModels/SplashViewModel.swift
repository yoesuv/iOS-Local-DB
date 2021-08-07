//
//  SplashViewModel.swift
//  iOS Local DB
//
//  Created by Yusuf Saifudin on 31/07/21.
//

import Foundation
import ObjectBox

class SplashViewModel {
    
    private let service = NetworkService()
    
    func loadUsers(doneLoading: @escaping () -> Void) {
        service.fetchUsers { users in
            if let data = users {
                do {
                    let appSupport = try FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: true)
                        .appendingPathComponent(Bundle.main.bundleIdentifier!)
                    let directory = appSupport.appendingPathComponent(Constants.dbName)
                    try FileManager.default.createDirectory(at: directory, withIntermediateDirectories: true, attributes: nil)
                    let store = try Store(directoryPath: directory.path)
                    let userBox = store.box(for: UserDb.self)
                    try userBox.removeAll()
                    print("SplashViewModel # users count \(data.count)")
                    var listUserDb = [UserDb]()
                    data.forEach{ user in
                        let userDb = UserDb()
                        userDb.id = user.id
                        userDb.name = user.name
                        userDb.username = user.username
                        userDb.email = user.email
                        userDb.phone = user.phone
                        userDb.website = user.website
                        listUserDb.append(userDb)
                    }
                    try userBox.put(listUserDb)
                    doneLoading()
                } catch {
                    print("SplashViewModel # error \(error)")
                }
            }
        }
    }
    
}
