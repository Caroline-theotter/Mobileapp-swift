//
//  SurfSpotList.swift
//  SurfSwift
//
//  Created by laurie cluzeau on 07/12/2021.
//

import SwiftUI

struct SurfSpotList: View {
    var body: some View {
        List(DataManager.data) { surfspot in
           surfSpotRow(surfspot: surfspot)
        }
    }
}

struct SurfSpotList_Previews: PreviewProvider {
    static var previews: some View {
        SurfSpotList()
    }
}
