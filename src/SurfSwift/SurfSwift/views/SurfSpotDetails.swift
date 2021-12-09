//
//  SurfSpotDetails.swift
//  SurfSwift
//
//  Created by laurie cluzeau on 07/12/2021.
//
//
import SwiftUI

struct SurfSpotDetails: View {
    var surfspot: Spot
    
    var body: some View {
        ScrollView {
//            MapView(coordinate: surfspot.fields.geocode)
//                .ignoresSafeArea(edges: .top)
//                .frame(height: 300)
//
//            durban_spot(image: surfspot.fields.photo.self)
//                .offset(y:-130)
//                .padding(.bottom, -130)
                
            VStack(alignment: .leading){
                Text(surfspot.fields.destination)
                    .font(.title)
                    .foregroundColor(Color.blue)
                    .multilineTextAlignment(.center)
            
                HStack {
//                    Text(surfspot.fields.difficultyLevel)
                    Spacer()
                    Text(surfspot.fields.stateCountry)
                    }
                
                .font(.subheadline)
                .foregroundColor(.secondary)
                
                Divider()
                
                Text("About \(surfspot.fields.destination)")
                    .font(.title2)
//                Text(surfspot.fields.)
                }
            .padding()
            }
        .navigationTitle(surfspot.fields.destination)
        .navigationBarTitleDisplayMode(.inline)
        }
    }


//
//struct SurfSpotDetails_Previews: PreviewProvider {
//    static var previews: some View {
//        SurfSpotDetails(surfspot: DataManager.data[0])
//    }
//}
