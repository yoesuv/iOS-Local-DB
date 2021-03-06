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
    
    init() {
        let navBarAppearance = UINavigationBarAppearance()
        navBarAppearance.configureWithOpaqueBackground()
        navBarAppearance.shadowColor = .clear
        navBarAppearance.backgroundColor = UIColor.init(Color("Pink500"))
        navBarAppearance.titleTextAttributes = [NSAttributedString.Key.foregroundColor:UIColor.white]
        UINavigationBar.appearance().standardAppearance = navBarAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = navBarAppearance
        UINavigationBar.appearance().compactAppearance = navBarAppearance
    }
    
    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.users) { user in
                    ZStack {
                        Text("\(user.id). \(user.name)")
                            .padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 0))
                        NavigationLink(destination: DetailView(idObjectBox: user.idObjectBox)) {
                            EmptyView()
                        }.frame(width: 0).opacity(0)
                    }
                }
                .onDelete(perform: { indexSet in
                    indexSet.forEach({ index in
                        let user = viewModel.users[index]
                        viewModel.deleteUser(id: user.idObjectBox)
                        viewModel.users.remove(at: index)
                    })
                })
                .listRowInsets(EdgeInsets())
            }
            .listStyle(PlainListStyle())
            .navigationBarTitle(Text("List User"), displayMode: .inline)
            .navigationBarItems(trailing: Button("Delete All", action: {
                showAlertDelete.toggle()
            }).foregroundColor(.white))
        
        }
        .navigationViewStyle(.stack)
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
            message: Text("Delete All user?"),
            primaryButton: .destructive(Text("Yes"), action: {
                viewModel.users.removeAll()
                viewModel.deleteAllUser()
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
