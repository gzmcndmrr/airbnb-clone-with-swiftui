//
//  Listing.swift
//  airbnb
//
//  Created by Gizem Candemir on 7/17/25.
//

import Foundation

struct Listing: Identifiable, Codable, Hashable {
    
    let id: String
    let ownerUid: String
    let ownerName: String
    let ownerImageUrl: String
    let numberOfBedrooms: Int
    let numberofBathrooms: Int
    let numberOfGuests: Int
    var pricePerNight: Int
    let latitude: Double
    let longitude: Double
    let address: String
    let city: String
    let state: String
    let title: String
    var rating: Double
    var features: [ListingFeatures]
    var amenities: [ListingAmenities]
    let type: ListingType
    var imageUrls: [String]
}

enum ListingFeatures: Int, Codable, Identifiable, Hashable {
    case selfCheckIn
    case superHost
    
    var imageName: String {
        switch self{
        case .selfCheckIn: return "door.left.hand.open"
        case .superHost: return "medal"
        }
    }
    
    var title: String {
        switch self{
        case .selfCheckIn: return "Self check-In"
        case .superHost: return "Superhost"
        }
    }
    
    var subtitle: String {
        switch self{
        case .selfCheckIn: return "Check yourrself in with the keypad."
        case .superHost: return "Superhosts are experinced, highly rated hosts who are commited to providing greate stars for guests."
        }
    }
    var id:Int {return self.rawValue }
}

enum ListingAmenities: String, Codable, Identifiable, Hashable {
    case pool
    case kitchen
    case laundry
    case wifi
    case tv
    case alarmSystem
    case office
    case balcony
    
    var title:String
    {
        switch self{
        case .pool: return "Pool"
        case .kitchen: return "Kitchen"
        case .laundry: return "Laundry"
        case .wifi: return "Wi-Fi"
        case .tv: return "TV"
        case .alarmSystem: return "Alarm System"
        case .office: return "Office"
        case .balcony: return "Balcony"
        }

    }
    
    var imageName:String
    {
        switch self{
        case .pool: return "figure.pool.swim"
        case .kitchen: return "fork.knife"
        case .laundry: return "washer"
        case .wifi: return "wifi"
        case .tv: return "tv"
        case .alarmSystem: return "checkerboard.shield"
        case .office: return "pencil.and.ruler.fill"
        case .balcony: return "building"
        }

    }
    
    
    var id:String {return self.rawValue }
}

enum ListingType: String, Codable, Identifiable, Hashable {
    case apartment
    case house
    case townHouse
    case villa
    
    var description: String
    {
        switch self{
        case .apartment: return "Apartment"
        case .house: return "House"
        case .townHouse: return "Town Home"
        case .villa: return "Villa"
        }
    }
    
    var id:String {return self.rawValue }

}
