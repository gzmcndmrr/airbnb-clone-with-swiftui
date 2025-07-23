//
//  ListingImageCarouselView.swift
//  airbnb
//
//  Created by Gizem Candemir on 7/16/25.
//

import SwiftUI

struct ListingImageCarouselView: View {
    
    let listing : Listing
    
    
    var body: some View {
        TabView{
            ForEach(listing.imageUrls, id:\.self){
                image in
                Image(image)
                    .resizable()
                    .scaledToFill()
            }
      }
            .tabViewStyle(.page)
    }
}

#Preview {
    ListingImageCarouselView(listing: DeveloperPreview.shared.listings[0])
}
