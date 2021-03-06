//
//  SplashView.swift
//  iOS Local DB
//
//  Created by Yusuf Saifudin on 20/07/21.
//

import SwiftUI

struct SplashView: View {
    
    @State private var isActive = false
    
    let viewModel = SplashViewModel()
    let home = HomeView()
    
    var body: some View {
        NavigationView {
            VStack(alignment: .center) {
                Text("iOS Local DB")
                    .font(.title)
                    .fontWeight(.semibold)
                NavigationLink(
                    destination: home,
                    isActive: $isActive,
                    label: {
                        EmptyView()
                    })
            }
            .navigationBarHidden(true)
        }
        .onAppear(perform: {
            viewModel.loadUsers {
                DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                    withAnimation {
                        isActive = true
                    }
                }
            }
        })
    }
    
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
