//
//  NetworkService.swift
//  iOS Local DB
//
//  Created by Yusuf Saifudin on 31/07/21.
//

import Foundation
import Alamofire

class NetworkService {
    
    func fetchUsers(users: @escaping ([User]?) -> Void) {
        AF.request("http://jsonplaceholder.typicode.com/users/", method: .get)
            .responseDecodable(of: [User].self) { response in
                if (response.error == nil) {
                    users(response.value)
                } else {
                    print("NetworkService # error \(response.error!)")
                }
            }
    }
    
}
