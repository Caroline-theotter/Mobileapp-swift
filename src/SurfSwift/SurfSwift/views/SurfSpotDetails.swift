//
//  SurfSpotDetails.swift
//  SurfSwift
//
//  Created by laurie cluzeau on 07/12/2021.
//
//
//import SwiftUI
//
//struct SurfSpotDetails: View {
//    var surfspot: surfSpotInfo
//    
//    var body: some View {
//        ScrollView {
//            MapView(coordinate: surfspot.locationCoordinate)
//                .ignoresSafeArea(edges: .top)
//                .frame(height: 300)
//            
//            durban_spot(image: surfspot.image)
//                .offset(y:-130)
//                .padding(.bottom, -130)
//                
//            VStack(alignment: .leading){
//                Text(surfspot.name)
//                    .font(.title)
//                    .foregroundColor(Color.blue)
//                    .multilineTextAlignment(.center)
//            
//                HStack {
//                    Text(surfspot.difficulty)
//                    Text(surfspot.TypeOfWave)
//                    Spacer()
//                    Text(surfspot.country)
//                    }
//                
//                .font(.subheadline)
//                .foregroundColor(.secondary)
//                
//                Divider()
//                
//                Text("About \(surfspot.name)")
//                    .font(.title2)
//                    Text(surfspot.description)
//                }
//            .padding()
//            }
//        .navigationTitle(surfspot.name)
//        .navigationBarTitleDisplayMode(.inline)
//        }
//    }
//
//
//
//struct SurfSpotDetails_Previews: PreviewProvider {
//    static var previews: some View {
//        SurfSpotDetails(surfspot: DataManager.data[0])
//    }
//}
