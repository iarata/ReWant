//
//  ContentView.swift
//  ReWant
//
//  Created by Alireza Hajebrahimi on 2020/09/24.
//

import SwiftUI

// MARK: TabViews
struct ContentView: View {
    var body: some View {
        TabView {
            Home()
                .tabItem({
                    Image("home")
                    Text("Home")
                })
                .tag(0)
            Text("Search")
                .font(.title)
                .tabItem({
                    Image("searchList")
                    Text("Search")
                })
                .tag(1)
            Text("Maps")
                .font(.title)
                .tabItem({
                    Image("maps")
                    Text("Maps")
                })
                .tag(1)
            Text("Status")
                .font(.title)
                .tabItem({
                    Image("hashtag").resizable().frame(width: 20, height: 20)
                    Text("Status")
                })
                .tag(1)
            Text("Profile")
                .font(.title)
                .tabItem({
                    Image("account")
                    Text("Account")
                })
                .tag(1)
        }
    }
}
