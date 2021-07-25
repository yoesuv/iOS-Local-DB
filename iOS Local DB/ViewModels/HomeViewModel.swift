//
//  HomeViewModel.swift
//  iOS Local DB
//
//  Created by Yusuf Saifudin on 25/07/21.
//

import Foundation
import ObjectBox

class HomeViewModel: ObservableObject {
    
    @Published var dataCount: Int = 0
    var userBox: Box<User>? = nil
    
    init() {
        do {
            let appSupport = try FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: true)
                .appendingPathComponent(Bundle.main.bundleIdentifier!)
            let directory = appSupport.appendingPathComponent(Constants.dbName)
            try FileManager.default.createDirectory(at: directory, withIntermediateDirectories: true, attributes: nil)
            let store = try Store(directoryPath: directory.path)
            userBox = store.box(for: User.self)
        } catch {
            print("HomeViewModel # error init \(error)")
        }
    }
    
    func loadUsers() {
        if let box = userBox {
            do {
                print("HomeViewModel # user count \(try box.all().count)")
                dataCount = try box.all().count
            } catch {
                print("HomeViewModel # error load users \(error)")
            }
        }
    }
    
}
