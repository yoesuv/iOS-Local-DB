//
//  UserData.swift
//  iOS Local DB
//
//  Created by Yusuf Saifudin on 20/07/21.
//

import Foundation
import ObjectBox


class User: Codable, Identifiable {
    
    var id: Int = 0
    var name: String = ""
    var username: String = ""
    var email: String = ""
    var phone: String = ""
    var website: String = ""
    
    required init() {
        
    }
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case username
        case email
        case phone
        case website
    }
}

struct Address: Codable {
    let street, suite, city, zipcode: String
    let geo: Geo
}

struct Geo: Codable {
    let lat, lng: String
}

struct Company: Codable {
    let name, catchPhrase, bs: String
}
