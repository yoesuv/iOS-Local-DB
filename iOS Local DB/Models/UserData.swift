//
//  UserData.swift
//  iOS Local DB
//
//  Created by Yusuf Saifudin on 20/07/21.
//

import Foundation

struct User: Codable {
    let id: Int
    let name, username, email, phone: String
    let website: String
    let address: Address
    let company: Company
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
