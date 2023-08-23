//
//  StateView.swift
//  swift-pack
//
//  Created by nattapol wattana on 23/8/2566 BE.
//

import SwiftUI

struct StateView: View {
    @State private var isState = false
    var body: some View {
        VStack {
            Text(isState ? "State" : "Unstate")
                .font(.largeTitle)
                .padding()
            
            Button(action: {
                // Toggle the playback state when the button is tapped
                self.isState.toggle()
            }) {
                Text(isState ? "Unstate" : "State")
                    .font(.headline)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
        }
    }
}

