//
//  HomeView.swift
//  iOS Local DB
//
//  Created by Yusuf Saifudin on 20/07/21.
//

import SwiftUI

struct HomeView: View {
    
    @ObservedObject var viewModel = HomeViewModel()
    @State var showAlertDelete = false
    @State var name: String = ""
    
    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.users) { user in
                    Text("\(user.id). \(user.name)")
                        .padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 0))
                }
                .onDelete(perform: { indexSet in
                    indexSet.forEach({ index in
                        self.name = viewModel.users[index].name
                        showAlertDelete.toggle()
                    })
                })
                .listRowInsets(EdgeInsets())
            }
            .navigationBarTitle(Text("List User"), displayMode: .inline)
        }
        .navigationBarHidden(true)
        .onAppear(perform: {
            viewModel.loadUsers()
        })
        .alert(isPresented: $showAlertDelete) {
            alertDelete()
        }
    }
    
    func alertDelete() -> Alert {
        return Alert(
            title: Text("DELETE"),
            message: Text("Delete user \(self.name)?"),
            primaryButton: .destructive(Text("Yes"), action: {
                print("HomeView # delete \(self.name)")
            }),
            secondaryButton: .cancel(Text("Cancel"))
        )
    }
    
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
