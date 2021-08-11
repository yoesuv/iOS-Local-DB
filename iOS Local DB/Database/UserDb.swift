//
//  UserDb.swift
//  iOS Local DB
//
//  Created by Yusuf Saifudin on 07/08/21.
//

import Foundation
import ObjectBox

// objectbox: entity
class UserDb: Identifiable {
    
    // objectbox: id
    var idObjectBox: UInt64 = 0
    var id: Int = 0
    var name: String = ""
    var username: String = ""
    var email: String = ""
    var phone: String = ""
    var website: String = ""
    var company: ToOne<CompanyDb> = nil
    
}

class CompanyDb: Entity {
    
    var id: Id = 0
    var name: String = ""
    var catchPhrase: String = ""
    var bs: String = ""
    
    required init() {
        
    }
}
