//
//  Listing.swift
//  AirbnbApp
//
//  Created by Khawla Zarrami on 12/11/2025.
//

struct Listing : Identifiable, Codable, Hashable {
    let id: String
    let owernerUid: String
    let ownerName: String
    let ownerImageUrl: String
    let numberOfBedrooms: Int
    let numberOfBathrooms: Int
    let numberOfGuests: Int
    let numberOfBeds: Int
    var pricePerNight: Int
    let latitude: Double
    let longitude:Double
    var imageURLs: [String]
    let address: String
    let city: String
    let state: String
    let title: String
    var rating: Double
    var features:[ListingFeatures]
    var amenities: [ListingAmenities]
    let type: ListingType
}

enum ListingFeatures: Int, Codable, Identifiable, Hashable {
    case selfCheckIn
    case superHost
    
    var imageName: String {
        switch self {
            case .selfCheckIn: return "door.left.hand.open"
            case .superHost: return "medal"
        }
   
    }
    
    var title: String {
        switch self {
            case .selfCheckIn: return "Self checkin"
            case .superHost: return "Superhost"
        }
   
    }
    
    var subtitle: String {
        switch self {
            case .selfCheckIn: return "Check your self in with the keypad."
            case .superHost: return "Superhosts are experienced, heighly rated hosts who are commited to providing great stars for guests."
        }
   
    }
    
    var id: Int { return self.rawValue }
}

enum ListingAmenities: Int, Codable, Identifiable, Hashable {
    case pool
    case kitchen
    case wifi
    case laundry
    case tv
    case alarmSystem
    case office
    case balcony
    
    var title: String {
        switch self {
        case .pool: return "Pool"
        case .kitchen: return "Kitchen"
        case .wifi: return "Wifi"
        case .laundry: return "Laundry"
        case .tv: return "Tv"
        case .alarmSystem: return "Alarm System"
        case .office: return "Office"
        case .balcony: return "Balcony"
        }
    }
    
    var imageName: String {
        switch self {
        case .pool: return "figure.pool.swim"
        case .kitchen: return "fork.knife"
        case .wifi: return "wifi"
        case .laundry: return "washer"
        case .tv: return "tv"
        case .alarmSystem: return "checkerboard.shield"
        case .office: return "pencil.and.ruler.fill"
        case .balcony: return "building"
        }
    }
    
    
    var id: Int {  return self.rawValue }
    
}

enum ListingType: Int, Codable, Identifiable, Hashable {
    var id:Int { return self.rawValue }
    
    case appartment
    case house
    case townHouse
    case villa
    
    var description: String {
        switch self {
        case .appartment: return "Appartment"
        case .house: return "House"
        case .townHouse: return "Town Home"
        case .villa: return "Villa"
        }
    }
}
