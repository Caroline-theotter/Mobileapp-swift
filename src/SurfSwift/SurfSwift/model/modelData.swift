////
////  modelData.swift
////  SurfSwift
////
//////  Created by laurie cluzeau on 07/12/2021.
//
//import Foundation
//import SwiftUI
//import Combine
//
//class FetchImageURL: BindableObject {
//    var didChange = PassthroughSubject<Data, Never>()
//    
//    var data = Data() {
//        didSet {
//            didChange.send(data)
//        }
//    }
//    
//    init(imageURL: String) {
//        guard let url = URL(string: imageURL) else { return }
//        URLSession.shared.dataTask(with: url) { (data, response, error) in
//            guard let data = data else { return }
//            DispachQueue.main.async {
//                self.data = data
//            }
//        }.resume()
//    }
//}

