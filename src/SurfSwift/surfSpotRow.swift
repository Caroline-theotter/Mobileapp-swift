//
//  surfSpotRow.swift
//  SurfSwift
//
//  Created by laurie cluzeau on 07/12/2021.
//

import SwiftUI

struct surfSpotRow: View {
    var surfspot: surfSpotInfo
    
    var body: some View {
        HStack{
            surfspot.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(surfspot.name)
            
            
            Spacer()
        }
    }
}

struct surfSpotRow_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            surfSpotRow(surfspot: DataManager.data[0])
            surfSpotRow(surfspot: DataManager.data[1])
            surfSpotRow(surfspot: DataManager.data[2])
            surfSpotRow(surfspot: DataManager.data[3])
            
    }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
