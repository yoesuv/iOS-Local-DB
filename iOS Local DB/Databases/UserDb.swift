//
//  UserDb.swift
//  iOS Local DB
//
//  Created by Yusuf Saifudin on 23/07/21.
//

import Foundation
import ObjectBox

class UderDb: Entity {
    // objectbox: id
    var idObjectBox: UInt64 = 0

    var id: Int = 0
    var name: String = ""
    var username: String = ""
    var email: String = ""
    var phone: String = ""
    var website: String = ""
    var address: ToOne<AddressDb> = nil
    var company: ToOne<CompanyDb> = nil
    
    required init() {
        
    }
}

class AddressDb: Entity {
    var id: Id = 0
    var street: String = ""
    var suite: String = ""
    var city: String = ""
    var zipcode: String = ""
    var geo: ToOne<GeoDb> = nil
    required init() {
        
    }
}

class GeoDb: Entity {
    
    var id: Id = 0
    var lat: String = ""
    var lng: String = ""
    
    required init() {
        
    }
}

class CompanyDb: Entity {
    
    var id: Id = 0
    var name: String = ""
    var catchPhrase: String = ""
    var bs: String = ""
    
    required init() {
        
    }
}
