//
//  SeeFoodView.swift
//  swift-pack
//
//  Created by nattapol wattana on 31/8/2566 BE.
//

import SwiftUI

struct SeeFoodView: View {
    var body: some View {
        VStack{
            HStack{
                Image(systemName: "photo")
                Image(systemName: "camera")
            }
            .font(.largeTitle)
            .foregroundColor(.blue)
            Rectangle()
                .strokeBorder()
                .foregroundColor(.yellow)
        }.padding()
    }
}

struct SeeFoodView_Previews: PreviewProvider {
    static var previews: some View {
        SeeFoodView()
    }
}
