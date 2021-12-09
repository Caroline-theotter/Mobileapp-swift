//
//  SurfSpotList.swift
//  SurfSwift
//
//  Created by laurie cluzeau on 07/12/2021.


import SwiftUI

struct SurfSpotList: View {
    
    var spots: [Spot]
    var body: some View {
        let _ = print(spots, "surspotList")
        NavigationView{
            List(spots) { spot in
            NavigationLink{
                SurfSpotDetails(surfspot: spot)
            } label:{
           surfSpotRow(surfspot: spot)
            }
        }
        .navigationTitle("Surf Spots")
        }
        
    }
}
//
//struct SurfSpotList_Previews: PreviewProvider {
//    static var previews: some View {
//        SurfSpotList()
//    }
//}
