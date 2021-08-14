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
    
    @Environment(\.presentationMode) var presentation
    
    var body: some View {
        GeometryReader { geo in
            VStack(alignment: .leading){
                // User
                userLayer
                // Address
                addressLayer
                // Company
                companyLayer
            }.frame(maxHeight: geo.size.height, alignment: .topLeading)
            .padding(10)
            .navigationBarTitle(Text("Detail User"), displayMode: .inline)
            .navigationBarBackButtonHidden(true)
            .navigationBarItems(leading: Button(action: {
                self.presentation.wrappedValue.dismiss()
            }) {
                Image(systemName: "chevron.left")
            }.foregroundColor(.white))
            .onAppear {
                viewModel.loadUser(id: idObjectBox)
            }
        }
    }
    
    var userLayer: some View {
        VStack(alignment: .leading){
            Text("ID : \(viewModel.id)")
            Text("Name : \(viewModel.name)")
            Text("Username : \(viewModel.username)")
            Text("Email : \(viewModel.email)")
        }
    }
    
    var addressLayer: some View {
        VStack(alignment: .leading){
            Text("Address")
                .font(.headline)
                .fontWeight(.semibold)
                .padding(.top, 10)
            Text("Street : \(viewModel.street)")
            Text("Suite : \(viewModel.suite)")
            Text("City : \(viewModel.city)")
        }
    }
    
    var companyLayer: some View {
        VStack(alignment: .leading){
            Text("Company")
                .font(.headline)
                .fontWeight(.semibold)
                .padding(.top, 10)
            Text("Name : \(viewModel.companyName)")
            Text("Catch Phrase : \(viewModel.companyCatchPhrase)")
            Text("Business : \(viewModel.companyBusiness)")
        }
    }
    
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(idObjectBox: nil)
    }
}
