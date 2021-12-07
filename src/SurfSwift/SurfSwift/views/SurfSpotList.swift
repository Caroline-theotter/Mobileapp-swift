//
//  SurfSpotList.swift
//  SurfSwift
//
//  Created by laurie cluzeau on 07/12/2021.
//

import SwiftUI

struct SurfSpotList: View {
    var body: some View {
        NavigationView{
        List(DataManager.data) { surfspot in
            NavigationLink{
                SurfSpotDetails()
            } label:{
           surfSpotRow(surfspot: surfspot)
            }
        }
        .navigationTitle("Surf Spots")
        }
    }
}

struct SurfSpotList_Previews: PreviewProvider {
    static var previews: some View {
        SurfSpotList()
    }
}
