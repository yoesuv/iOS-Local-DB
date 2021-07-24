//
//  NetworkManager.swift
//  iOS Local DB
//
//  Created by Yusuf Saifudin on 20/07/21.
//

import Foundation
import Alamofire
import ObjectBox

class NetworkManager: ObservableObject {
    
    let dbName = "db_users"
    
    func fetchUsers() {
        AF.request("http://jsonplaceholder.typicode.com/users/", method: .get)
            .responseDecodable(of: [User].self) { response in
                if (response.error == nil) {
                    if let count = response.value?.count {
                        print("NetworkManager # success \(count)")
                    }
                    do {
                        let appSupport = try FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: true)
                            .appendingPathComponent(Bundle.main.bundleIdentifier!)
                        let directory = appSupport.appendingPathComponent(self.dbName)
                        try FileManager.default.createDirectory(at: directory, withIntermediateDirectories: true, attributes: nil)
                        let store = try Store(directoryPath: directory.path)
                    } catch {
                        print("NetworkManager # error \(error)")
                    }
                } else {
                    print("NetworkManager # error \(response.error!)")
                }
            }
    }
    
}
