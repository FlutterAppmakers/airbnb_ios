//
//  ExploreView.swift
//  AirbnbApp
//
//  Created by Khawla Zarrami on 16/09/2025.
//

import SwiftUI

struct ExploreView: View {
    @State private var showDestinationSearchView = false
    
    
    var body: some View {
        NavigationStack {
            if showDestinationSearchView {
                DestinationSearchView(show: $showDestinationSearchView)
            } else {
                ScrollView {
                    SearchAndFilterBar()
                        .onTapGesture {
                            withAnimation(.snappy) {
                                showDestinationSearchView.toggle()
                            }
                        }
                    LazyVStack {
                        ForEach(0 ... 10, id: \.self) { listing in
                            NavigationLink(value: listing) {
                                ListingItemView()
                                    .frame(height: 400)
                                    .clipShape(RoundedRectangle(cornerRadius: 10))
                            }
                            
                        }
                    }
                    .padding()
                }
                .navigationDestination(for: Int.self) { listing in
                    ListingDetailView()
                        .navigationBarHidden(true)
                       // .navigationBarBackButtonHidden()
                }
            }
            
        }
        
    }
}

#Preview {
    ExploreView()
}
