//
//  DetailViewModel.swift
//  iOS Local DB
//
//  Created by Yusuf Saifudin on 06/08/21.
//

import Foundation
import ObjectBox

class DetailViewModel: ObservableObject {
    
    var userBox: Box<UserDb>? = nil
    
    @Published var id : Int = 0
    @Published var name : String = ""
    @Published var username : String = ""
    @Published var email : String = ""
    
    @Published var street : String = ""
    @Published var suite : String = ""
    @Published var city : String = ""

    @Published var companyName : String = ""
    @Published var companyCatchPhrase : String = ""
    @Published var companyBusiness : String = ""
    
    
    init() {
        do {
            let store = try AppBox.boxInit(dbName: Constants.dbName)
            userBox = store.box(for: UserDb.self)
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
                
                if let address = data.address.target {
                    self.street = address.street
                    self.suite = address.suite
                    self.city = address.city
                }
                
                if let company = data.company.target {
                    self.companyName = company.name
                    self.companyCatchPhrase = company.catchPhrase
                    self.companyBusiness = company.bs
                }
            }
        } catch {
            print("DetailViewModel # error load user \(error)")
        }
    }
    
}
