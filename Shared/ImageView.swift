//
//  ImageView.swift
//  swift-pack
//
//  Created by nattapol wattana on 23/8/2566 BE.
//

import SwiftUI

struct ImageView: View {
    var body: some View {
        ScrollView {
            VStack {
                Text("Image")
                // .resizable() modifier to make it fit the entire available screen area
                Image("test").resizable()
                // image to fit within the screen edges and maintain its aspect ration
                Image("test")
                    .resizable()
                    .scaledToFit()
                // Position the image within a custom frame:
                Image("test")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150.0, height: 100.0, alignment: .top)
                // Circle image and .aspectRatio(contentMode: .fill) == .scaledToFit()
                Image("test")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 200.0, height: 200.0, alignment: .center)
                    .clipShape(Circle())
                Image("test")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 100.0, height: 100.0, alignment: .center)
                    .border(Color.blue, width: 3.0)
                    .clipped()
                
            }}
    }
}
