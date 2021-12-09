//
//  surfSpotInfo.swift
//  SurfSwift
//
//  Created by laurie cluzeau on 07/12/2021.
//

import Foundation
import SwiftUI
import CoreLocation

struct Records: Codable{
    var spots: [Spot]
    enum CodingKeys: String, CodingKey {
            case spots = "records"
    }
    
//    private var imageName: String
//
//    var image: Image {
//        Image(imageName)
//    }
//
//    private var coordinates: Coordinates
//
//    var locationCoordinate: CLLocationCoordinate2D{
//        CLLocationCoordinate2D(latitude: coordinates.latitude, longitude: coordinates.longitude)
//    }
//
//    struct Coordinates: Hashable, Codable {
//        var latitude: Double
//        var longitude: Double
//    }
}
//struct Number:
//
struct Spot: Codable{
    var fields: Fields
    var id: String
}


struct Fields: Codable{
    var difficultyLevel: Int
    var destination: String
    var stateCountry: String
    var geocode: String
    var photo: [PhotoData]

    enum CodingKeys: String, CodingKey {
            case difficultyLevel = "Difficulty Level"
            case destination = "Destination"
            case photo = "Photos"
//            case idPhoto = "id"
            case stateCountry = "Destination State/Country"
            case geocode = "Geocode"
        }
    init(from decoder: Decoder) throws {
            let values = try decoder.container(keyedBy: CodingKeys.self)
            difficultyLevel = try values.decode(Int.self, forKey: .difficultyLevel)
            destination = try values.decode(String.self, forKey: .destination)
            stateCountry = try values.decode(String.self, forKey: .stateCountry)
            photo = try values.decode([PhotoData].self, forKey: .photo)
            geocode = try values.decode(String.self, forKey: .geocode)
        print(difficultyLevel)
        print(destination)
        print(stateCountry)
        print(geocode)
//        print(photo)
    }
}
//
struct PhotoData: Codable{
    var url: String
    var idPhoto: String
//
    enum CodingKeys: String, CodingKey {
        case idPhoto = "id"
        case url = "url"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        idPhoto = try values.decode(String.self, forKey: .idPhoto)
        url = try values.decode(String.self, forKey: .url)
        print(url)
    }
}


