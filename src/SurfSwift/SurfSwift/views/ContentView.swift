//
//  ContentView.swift
//  SurfSwift
//
//  Created by laurie cluzeau on 06/12/2021.
//

import SwiftUI
import Foundation
//import CoreData

struct ContentView: View {
    
    @State var results = Records(spots: [])
    
    var body: some View {
        TabView {
            SurfSpotList(spots: results.spots)
//           SpotsView()
                .tabItem {
                    Image("surf")
                    Text("Spots")
                }
           EditView()
                .tabItem {
                    Image("edit")
                    Text("Add new surf spot")
                }
        }
//        VStack{
//            SurfSpotList(spots: results.spots)
//        }
        .onAppear {
            loadData()
        }
    }
    
    func loadData() {
        
        guard let url = URL(string: "https://api.airtable.com/v0/appxT9ln6ixuCb3o1/Surf%20Destinations?api_key=keytJfvmEMHuMhOp7") else {
            print("Invalid URL")
            return
        }
        var request = URLRequest(url: url)
        
        URLSession.shared.dataTask(with: request) { data, response, error in
            if let data = data {
                if let response = try? JSONDecoder().decode(Records.self, from: data) {
                    DispatchQueue.main.async {
                        self.results = response
                        //                        results = Records(spots: response.spots)
                        print(self.results)
                    }
                    return
                }
            }
        }.resume()
        
        // Serialize HTTP Body data as JSON
        let body = ["user_id": "12"]
        let bodyData = try? JSONSerialization.data(
            withJSONObject: body,
            options: []
        )

        // Change the URLRequest to a POST request
        request.httpMethod = "POST"
        request.httpBody = bodyData
        
    }
}



extension Image {
    
    func data(url:URL) -> Self {
        if let data = try? Data(contentsOf: url) {
            return Image(uiImage: UIImage(data: data)!)
                .resizable()
        }
        return self
            .resizable()
    }
}




struct EditView: View {
    @State var destination: String = ""
    @State var difficultyLevel: Int = 0
    @State var stateCountry: String = ""
    @State var photo: String = ""
//
//    func onSubmit(of triggers: SubmitTriggers = .text, _ action: @escaping (() -> Void)) -> some View
    
    var body: some View {
        NavigationView{
            Form{
                TextField("Spot name", text: $destination)
                TextField("Difficulty level",value: $difficultyLevel, format: .number)
                TextField("State/Country", text: $stateCountry)
                TextField("Photo url", text: $photo)
//                    .onSubmit {
//                            guard SurfSpotList.isEmpty == false() else{ return }
//                            SurfSpotList(spots: results.spots)
//                        }
                    .submitLabel(.send)
//                Button(action: ) {
//                    Text("Add new spot")
                }
            }
            .navigationBarTitle("New spot")
        }
//        Color.blue
    }



//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}

