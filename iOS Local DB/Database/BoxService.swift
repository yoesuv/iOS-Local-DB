//
//  AppBox.swift
//  iOS Local DB
//
//  Created by Yusuf Saifudin on 07/08/21.
//

import Foundation
import ObjectBox

class BoxService {
    
    private var store: Store?
    
    init() {
        do {
            let appSupport = try FileManager.default.url(
                for: .applicationSupportDirectory,
                in: .userDomainMask,
                appropriateFor: nil,
                create: true)
                .appendingPathComponent(Bundle.main.bundleIdentifier!)
            let directory = appSupport.appendingPathComponent(Constants.dbName)
            try FileManager.default.createDirectory(at: directory, withIntermediateDirectories: true, attributes: nil)
            self.store = try Store(directoryPath: directory.path)
        } catch {
            print("BoxService # ERROR \(error)")
        }
    }
    
    func box<E>(entity: E.Type = E.self) -> ObjectBox.Box<E>?  where E: ObjectBox.EntityInspectable,
                                                                     E: ObjectBox.__EntityRelatable,
                                                                     E == E.EntityBindingType.EntityType {
                                                                         return store?.box(for: E.self)
                                                                     }
    
}
