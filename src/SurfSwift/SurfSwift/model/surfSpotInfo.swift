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
//    var fields: Fields
    
    
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
  //  var stateCountry: String
//    var photo: PhotoData

    enum CodingKeys: String, CodingKey {
            case difficultyLevel = "Difficulty Level"
            case destination = "Destination"

          //  case stateCountry = "Destination State/Country"
        }
    init(from decoder: Decoder) throws {
            let values = try decoder.container(keyedBy: CodingKeys.self)
            difficultyLevel = try values.decode(Int.self, forKey: .difficultyLevel)
            destination = try values.decode(String.self, forKey: .destination)
        print(difficultyLevel)
        print(destination)
        }
}

//struct PhotoData: Codable{
//    var urlPhoto: URL
//}

//extension SurfPlace {
//    struct SurfData: Codable {
//        struct Container: Codable{
//            var number: Int
//        }
//
//        var records: Container
//    }
//}


