//
//  HomeView.swift
//  iOS Local DB
//
//  Created by Yusuf Saifudin on 20/07/21.
//

import SwiftUI

struct HomeView: View {
    
    @ObservedObject var viewModel = HomeViewModel()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.users) { user in
                    Text("\(user.id). \(user.name)")
                        .padding(EdgeInsets(top: 0, leading: 8, bottom: 0, trailing: 0))
                        
                }
                .listRowInsets(EdgeInsets())
            }
            .navigationBarTitle(Text("List User"), displayMode: .inline)
        }
        .navigationBarHidden(true)
        .onAppear(perform: {
            viewModel.loadUsers()
        })
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
