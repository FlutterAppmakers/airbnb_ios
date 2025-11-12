//
//  WishListView.swift
//  AirbnbApp
//
//  Created by Khawla Zarrami on 11/11/2025.
//

import SwiftUI

struct WishListView: View {
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading,spacing: 32) {
                VStack(alignment: .leading, spacing: 4) {
                    Text("Log in to view your wishlists")
                        .font(.headline)
                    Text("You can create, view or edit wishlists once you're logged in.")
                        .font(.footnote)
                }
                
                Button("Log in") {
                    
                }
                .foregroundStyle(.white)
                .font(.subheadline)
                .fontWeight(.semibold)
                .frame(width: 360, height: 44)
                .background(.pink)
                .clipShape(RoundedRectangle(cornerRadius: 12))
                
                Spacer()
                
            }
            .padding()
            .navigationTitle("Wishlists")
        }
        
    }
}

#Preview {
    WishListView()
}
