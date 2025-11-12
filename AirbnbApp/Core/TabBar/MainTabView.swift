//
//  MainTabView.swift
//  AirbnbApp
//
//  Created by Khawla Zarrami on 11/11/2025.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            ExploreView()
                .tabItem{ Label("Explore", systemImage: "magnifyingglass")}
                
            WishListView()
                .tabItem{ Label("Wishlists", systemImage: "heart")}
            
            ProfileView()
                .tabItem{ Label("Profile", systemImage: "person")}
        }
    }
}

#Preview {
    MainTabView()
}
