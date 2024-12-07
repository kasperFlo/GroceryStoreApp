//
//  ResturantApp.swift
//  GroceryStoreApp
//
//  Created by Suthakaran Siva on 2024-12-05.
//

import SwiftUI
import GooglePlaces

@main
struct ResturantApp: App {
    
    @StateObject var favoritesManager = FavoritesManager()

    init() {
        GMSPlacesClient.provideAPIKey(Secret)
    }
    
    var body: some Scene {
        WindowGroup {
            MainTabView()
                .environmentObject(favoritesManager)
        }
    }
    
}

