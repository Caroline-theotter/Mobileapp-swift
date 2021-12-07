//
//  SurfSpotDetails.swift
//  SurfSwift
//
//  Created by laurie cluzeau on 07/12/2021.
//

import SwiftUI

struct SurfSpotDetails: View {
    var body: some View {
        VStack {
            MapView()
                .ignoresSafeArea(edges: .top)
                .frame(height: 350)
           durban_spot()
                .offset(y:-100)
                .padding(.bottom, -100)
                
            VStack(alignment: .leading){
                Text("Addington")
                    .font(.title)
                    .foregroundColor(Color.blue)
                    .multilineTextAlignment(.center)
                
            }
            
            Text("Durban")
            Spacer()
        }
//        .padding()
    
        Spacer()
        
    }
}


struct SurfSpotDetails_Previews: PreviewProvider {
    static var previews: some View {
        SurfSpotDetails()
    }
}
