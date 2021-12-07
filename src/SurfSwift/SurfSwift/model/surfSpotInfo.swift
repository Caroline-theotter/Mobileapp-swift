//
//  surfSpotInfo.swift
//  SurfSwift
//
//  Created by laurie cluzeau on 07/12/2021.
//

import Foundation
import SwiftUI
import CoreLocation

struct surfSpotInfo: Hashable, Codable, Identifiable {
    var name: String
    var city: String
    var country: String
    var difficulty: String
    var TypeOfWave: String
    var id: Int
    var description: String
    
    private var imageName: String

    var image: Image {
        Image(imageName)
    }
    
    
    private var coordinates: Coordinates
    
    var locationCoordinate: CLLocationCoordinate2D{
        CLLocationCoordinate2D(latitude: coordinates.latitude, longitude: coordinates.longitude)
    }
    
    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
    
}
