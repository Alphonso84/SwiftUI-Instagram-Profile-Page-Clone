//
//  MainView.swift
//  SwiftUI_Test_App
//
//  Created by Alphonso Sensley II on 3/2/21.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
           
            HomeView()
                .tabItem {
                    Label("", systemImage:"house")
                }
            SearchView()
                .tabItem {
                    Label("", systemImage:"magnifyingglass")
                }
            
            PlayView()
                .tabItem {
                    Label("", systemImage:"play.rectangle")
                }
            
            ShopView()
                .tabItem {
                    Label("", systemImage:"bag")
                }
            
            ContentView()
                .tabItem {
                    Label("",systemImage:"person.circle.fill")
                }
        }
        
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView().environmentObject(Search())
    }
}
