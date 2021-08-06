//
//  DetailViewModel.swift
//  iOS Local DB
//
//  Created by Yusuf Saifudin on 06/08/21.
//

import Foundation
import ObjectBox

class DetailViewModel: ObservableObject {
    
    var userBox: Box<User>? = nil
    
    @Published var id : Int = 0
    @Published var name : String = ""
    @Published var username : String = ""
    @Published var email : String = ""
    
    init() {
        do {
            let appSupport = try FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: true)
                .appendingPathComponent(Bundle.main.bundleIdentifier!)
            let directory = appSupport.appendingPathComponent(Constants.dbName)
            try FileManager.default.createDirectory(at: directory, withIntermediateDirectories: true, attributes: nil)
            let store = try Store(directoryPath: directory.path)
            userBox = store.box(for: User.self)
        } catch {
            print("DetailViewModel # error init \(error)")
        }
    }
    
    func loadUser(id: UInt64?) {
        do {
            let boxUser = try userBox?.get(id!)
            if let data = boxUser {
                self.id = data.id
                self.name = data.name
                self.username = data.username
                self.email = data.email
            }
        } catch {
            print("DetailViewModel # error load user \(error)")
        }
    }
    
}
