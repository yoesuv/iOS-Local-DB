//
//  SplashViewModel.swift
//  iOS Local DB
//
//  Created by Yusuf Saifudin on 31/07/21.
//

import Foundation

class SplashViewModel {
    
    private let service = NetworkService()
    
    func loadUsers(doneLoading: @escaping () -> Void) {
        service.fetchUsers { users in
            if let data = users {
                do {
                    let userBox = BoxService.shared.box(entity: UserDb.self)
                    try userBox?.removeAll()
                    print("SplashViewModel # users count \(data.count)")
                    var listUserDb = [UserDb]()
                    data.forEach{ user in
                        let userDb = UserDb()
                        userDb.id = user.id
                        userDb.name = user.name
                        userDb.username = user.username
                        userDb.email = user.email
                        userDb.phone = user.phone
                        userDb.website = user.website
                        
                        let addressDb = AddressDb()
                        addressDb.street = user.address.street
                        addressDb.suite = user.address.suite
                        addressDb.city = user.address.city
                        addressDb.zipcode = user.address.zipcode
                        userDb.address.target = addressDb
                        
                        let geoDb = GeoDb()
                        geoDb.lat = user.address.geo.lat
                        geoDb.lng = user.address.geo.lng
                        addressDb.geo.target = geoDb
                        
                        let companyDb = CompanyDb()
                        companyDb.name = user.company.name
                        companyDb.catchPhrase = user.company.catchPhrase
                        companyDb.bs = user.company.bs
                        userDb.company.target = companyDb
                        
                        listUserDb.append(userDb)
                    }
                    try userBox?.put(listUserDb)
                
                    doneLoading()
                } catch {
                    print("SplashViewModel # error \(error)")
                }
            }
        }
    }
    
}
