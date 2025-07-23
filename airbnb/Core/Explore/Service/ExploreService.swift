//
//  ExploreService.swift
//  airbnb
//
//  Created by Gizem Candemir on 7/17/25.
//

import Foundation

class ExploreService{
    
    func fetchListings() async throws -> [Listing] {
        return DeveloperPreview.shared.listings
    }
}
