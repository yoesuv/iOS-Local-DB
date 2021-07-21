//
//  NetworkManager.swift
//  iOS Local DB
//
//  Created by Yusuf Saifudin on 20/07/21.
//

import Foundation
import Alamofire

class NetworkManager: ObservableObject {
    
    func fetchUsers() {
        AF.request("http://jsonplaceholder.typicode.com/users/", method: .get)
            .responseDecodable(of: [User].self) { response in
                if (response.error == nil) {
                    print("NetworkManager # success \(response.value?.count)")
                } else {
                    print("NetworkManager # error \(response.error!)")
                }
            }
    }
    
}
