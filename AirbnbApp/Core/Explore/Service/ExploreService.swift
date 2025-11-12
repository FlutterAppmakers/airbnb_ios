//
//  ExploreService.swift
//  AirbnbApp
//
//  Created by Khawla Zarrami on 12/11/2025.
//

import Foundation

class ExploreService {
    
    func fetchListings() async throws -> [Listing] {
        return DeveloperPreview.shared.listings
    }
}
