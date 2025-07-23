//
//  ExploreView.swift
//  airbnb
//
//  Created by Gizem Candemir on 7/16/25.
//

import SwiftUI

struct ExploreView : View {
    @State private var showDestinationSearchView = false
    @StateObject var viewModel = ExploreViewModel(service: ExploreService())
    
    var body: some View {
        if showDestinationSearchView{
            DestinationSearchView(show: $showDestinationSearchView, viewModel: viewModel)
        } else {
            NavigationStack{
                VStack{
                    SearchAndFilterBar(location: $viewModel.searchLocation)
                        .onTapGesture {
                            withAnimation(.snappy){
                                showDestinationSearchView.toggle()
                            }
                        }
     
                    ScrollView {
                    
                        LazyVStack(spacing:32){
                            ForEach(viewModel.listings){
                                listing in
                                NavigationLink(value: listing){
                                    ListingItemView(listing: listing)
                                        .frame(height:400).clipShape(RoundedRectangle(cornerRadius:10) )}
                                }
                                
                        }
                    }
                    .navigationDestination(for: Listing.self){
                        listing in
                        
                        ListingDetailView(listing: listing)
                            .navigationBarHidden(true)
                            .navigationBarBackButtonHidden()
                        
                        
                    }

                }
            }
        }
   
    }
}

#Preview {
    ExploreView()
}
