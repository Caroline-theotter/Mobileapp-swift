//
//  SurfSpotDetails.swift
//  SurfSwift
//
//  Created by laurie cluzeau on 07/12/2021.
//
//
import SwiftUI
//import URLImage

struct SurfSpotDetails: View {
    var surfspot: Spot
    
    var body: some View {
        ScrollView {
            SurfMapView(surfspot: surfspot)
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)
            
            Image(systemName: "durban-spot")
                .data(url: URL(string: surfspot.fields.photo[0].url)!)
                .resizable()
                .frame(height:150)
                .clipShape(Circle())
                .offset(y: -130)
                .padding(.bottom, -130)
            
            
            VStack(alignment: .leading){
                Text(surfspot.fields.destination)
                    .font(.title)
                    .foregroundColor(Color.blue)
                    .multilineTextAlignment(.center)
                
                HStack {
                    Spacer()
                    Text(surfspot.fields.stateCountry)
                }
                
                .font(.subheadline)
                .foregroundColor(.secondary)
                
                Divider()
                
                Text("About \(surfspot.fields.destination)")
                    .font(.title2)
                StarsView(rating: CGFloat(surfspot.fields.difficultyLevel), maxRating: 5)
            }
            .padding()
        }
        .navigationTitle(surfspot.fields.destination)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct StarsView: View {
    var rating: CGFloat
    var maxRating: Int
    var body: some View {
        let stars = HStack(spacing: 0) {
            ForEach(0..<maxRating) { _ in
                Image("star")
            }
        }

        stars.overlay(
            GeometryReader { g in
                let width = rating / CGFloat(maxRating) * g.size.width
                ZStack(alignment: .leading) {
                    Rectangle()
                        .frame(width: width)
                        .foregroundColor(.yellow)
                }
            }
            .mask(stars)
        )
        .foregroundColor(.gray)
    }
}

//struct SurfSpotDetails_Previews: PreviewProvider {
//    static var previews: some View {
//        SurfSpotDetails(surfspot: DataManager.data[0])
//    }
//}
