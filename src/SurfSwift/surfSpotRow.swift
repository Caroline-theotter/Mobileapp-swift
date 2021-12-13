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
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width:50, height: 50)
            Text(surfspot.fields.destination)
            Spacer()
        }
    }
}

//struct ImageRow: View {
//    let model: Model
//    var body: some View {
//        VStack(alignment: .center){
//            ImageViewContainer(imageURL: model.imageURL)
//        }
//    }
//}
//
//struct ImageViewContainer: View {
//    @ObjectBinding var remoteImageUrl: RemoteImageURL
//    
//    init(imageURL: String){
//        remoteImageURL = RemoteImageURL(imageURL: imageURL)
//    }
//    
//    var body: some View {
//        Image(uiImage: (remoteImageURL.data.isEmpty) ? UIImage(imageLiteralResourceName: "durban-spot") : UIImage(data: remoteImageURL.data)!)
//            .resizable()
//            .aspectRatio(contentMode: .fit)
//            .frame(width:250, height: 250)
//    }
//}
//


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
