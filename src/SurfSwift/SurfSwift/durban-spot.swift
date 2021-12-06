//
//  durban-spot.swift
//  SurfSwift
//
//  Created by laurie cluzeau on 06/12/2021.
//

import SwiftUI

struct durban_spot: View {
    var body: some View {
        Image("durban-spot")
            .resizable()
            .frame(height:150)
            .clipShape(Circle())
    }
}

struct durban_spot_Previews: PreviewProvider {
    static var previews: some View {
        durban_spot()
            .frame(width: 0.0, height: 0.0)
            
    }
}
