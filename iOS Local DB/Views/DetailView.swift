//
//  DetailView.swift
//  iOS Local DB
//
//  Created by Yusuf Saifudin on 06/08/21.
//

import SwiftUI

struct DetailView: View {
    
    let idObjectBox: UInt64?
    
    @ObservedObject var viewModel = DetailViewModel()
    
    var body: some View {
        GeometryReader { geo in
            VStack(alignment: .leading){
                Text("ID : \(viewModel.id)")
                Text("Name : \(viewModel.name)")
                Text("Username : \(viewModel.username)")
                Text("Email : \(viewModel.email)")
            }.frame(maxHeight: geo.size.height, alignment: .topLeading)
            .padding(10)
            .onAppear {
                viewModel.loadUser(id: idObjectBox)
            }
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(idObjectBox: nil)
    }
}
