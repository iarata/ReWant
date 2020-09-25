//
//  home.swift
//  ReWant
//
//  Created by Alireza Hajebrahimi on 2020/09/25.
//

import SwiftUI

struct Home: View {
    
    
    // Search string to use in the search bar
    @State var searchString = ""
    
    
    
    var body: some View {
        
        // Search Navigation
        SearchNavigation(text: $searchString, search: searchKeyboardPressed, cancel: searchCancelPressed) {
            // Example SwiftUI View
            Text("s")
                .navigationBarTitle("Home")
        }.edgesIgnoringSafeArea(.top)
        .onAppear {
            
            // FETCHING PROJECTS REQUEST
            fetchProjects(keyWord: "swift", page: 1) {
                if $0 {
                    $1.forEach { print($0.title) }
                }
            }
            
            
        }
    }
    
    // MARK: - Search Actions
    // Search action. Called when search key pressed on keyboard
    func searchKeyboardPressed() {
    }
    
    // Cancel action. Called when cancel button of search bar pressed
    func searchCancelPressed() {
    }
    // MARK: Search Actions - end -
    
    
    
}
