//
//  AppBox.swift
//  iOS Local DB
//
//  Created by Yusuf Saifudin on 07/08/21.
//

import Foundation
import ObjectBox

class AppBox {
    
    static func boxInit(dbName: String) throws -> Store {
        do {
            let appSupport = try FileManager.default.url(for: .applicationSupportDirectory, in: .userDomainMask, appropriateFor: nil, create: true)
                .appendingPathComponent(Bundle.main.bundleIdentifier!)
            let directory = appSupport.appendingPathComponent(dbName)
            try FileManager.default.createDirectory(at: directory, withIntermediateDirectories: true, attributes: nil)
            return try Store(directoryPath: directory.path)
        } catch {
            throw error
        }
    }
    
}
