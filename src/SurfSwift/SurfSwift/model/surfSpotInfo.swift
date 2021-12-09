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
}

struct Spot: Codable, Identifiable{
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
            case stateCountry = "Destination State/Country"
            case geocode = "Geocode"
        }
}

struct PhotoData: Codable{
    var url: String

    enum CodingKeys: String, CodingKey {
        case url = "url"
    }
}


