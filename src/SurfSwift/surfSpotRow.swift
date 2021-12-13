////
////  surfSpotRow.swift
////  SurfSwift
////
////  Created by laurie cluzeau on 07/12/2021.

import SwiftUI


struct surfSpotRow: View {
    var surfspot: Spot
    
    var body: some View {
        HStack{
            
            Image(systemName: "durban-spot")
                .data(url: URL(string: surfspot.fields.photo[0].url)!)
                .clipShape(Circle())
                .frame(width:70, height: 70)
            Text(surfspot.fields.destination)
            Spacer()
        }
    }
}




//struct surfSpotRow_Previews: PreviewProvider {
//    static var previews: some View {
//        Group{
//            surfSpotRow(surfspot: DataManager.data[0])
//            surfSpotRow(surfspot: DataManager.data[1])
//            surfSpotRow(surfspot: DataManager.data[2])
//            surfSpotRow(surfspot: DataManager.data[3])
//
//    }
//        .previewLayout(.fixed(width: 300, height: 70))
//    }
//
//}
