//
//  MainTabView.swift
//  GroceryStoreApp
//
//  Created by Suthakaran Siva on 2024-12-05.
//

import SwiftUI

struct MainTabView: View {

    var body: some View {
        NavigationView {
            TabView {
                HomeBody()
                    .tabItem {
                        Label("Home", systemImage: "house.fill")
                    }
                
                FavoritesView()
                    .tabItem {
                        Label("Favorites", systemImage: "heart.fill")
                    }
            }
            .accentColor(.green)
            .onAppear {
                // Set background color for tab bar
                let appearance = UITabBarAppearance()
                appearance.backgroundColor = .white
                UITabBar.appearance().scrollEdgeAppearance = appearance
                UITabBar.appearance().standardAppearance = appearance
            }
        }
    }
}

//#Preview {
//    MainTabView()
//}
