//
//  MapView.swift
//  SurfSwift
//
//  Created by laurie cluzeau on 06/12/2021.
//

import SwiftUI
import MapKit
import CoreLocation

struct SurfMapView: View {
    var surfspot: Spot
    @State var location: CLLocationCoordinate2D?
    @State var region: MKCoordinateRegion = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 48.0, longitude: 2.0), span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2))
    
    
    var body: some View {
        Map(coordinateRegion: $region)
            .onAppear {
                self.getLocation(from: surfspot.fields.stateCountry) { coordinates in
                    if coordinates != nil {
                        self.location = coordinates
                        self.region = MKCoordinateRegion(center: self.location!, span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2))
                    }
                }
            }
    }
    
    func getLocation(from address: String, completion: @escaping (_ location: CLLocationCoordinate2D?)-> Void) {
        let geocoder = CLGeocoder()
        geocoder.geocodeAddressString(address) { (placemarks, error) in
            guard let placemarks = placemarks,
                  let location = placemarks.first?.location?.coordinate else {
                      completion(nil)
                      return
                  }
            completion(location)
        }
    }
}

//struct MapView_Previews: PreviewProvider {
//    static var previews: some View {
//        MapView(coordinate: CLLocationCoordinate2D(latitude:-29.858_6804,
//            longitude: 31.021_8404))
//    }
//}
