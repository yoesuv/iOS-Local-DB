//
//  DetailView.swift
//  iOS Local DB
//
//  Created by Yusuf Saifudin on 06/08/21.
//

import SwiftUI

struct DetailView: View {
    
    let idObjectBox: UInt64?
    
    var body: some View {
        Text("ObjectBox ID : \(idObjectBox!)")
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(idObjectBox: nil)
    }
}
