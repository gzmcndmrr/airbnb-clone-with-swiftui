//
//  ListingItemView.swift
//  airbnb
//
//  Created by Gizem Candemir on 7/16/25.
//

import SwiftUI

 struct ListingItemView: View {
     let listing: Listing

    var body: some View {
        VStack{
           //images
          ListingImageCarouselView(listing: listing)
                .frame(height:400)
                .clipShape(RoundedRectangle(cornerRadius: 10))
     
            
            //details
            HStack(alignment: .top){
                
                //detail
                VStack(alignment: .leading){
                    Text("\(listing.city), \(listing.state)")
                        .fontWeight(.semibold)
                        .foregroundStyle(.black)
                    
                    Text("12 mi away")
                        .foregroundStyle(.gray)
                    
                    Text("Nov 3 - 10")
                        .foregroundStyle(.gray)
                    
                    HStack(spacing: 4){
                        Text("\(listing.pricePerNight)")
                            .fontWeight(.semibold)
                            .foregroundStyle(.black)
                        Text("night")
                    }
               

                }
                Spacer()
                
                //rating
                HStack(spacing:2){
                    Image(systemName: "star.fill")
                    Text(String(format: "%.1f", listing.rating))
                }
            } .font(.footnote)
                .foregroundStyle(.black)
            
        }.padding()
    }
}

#Preview {
    ListingItemView(listing: DeveloperPreview.shared.listings[0])
}
