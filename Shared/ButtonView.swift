//
//  ButtonView.swift
//  swift-pack
//
//  Created by nattapol wattana on 23/8/2566 BE.
//

import SwiftUI

struct ButtonView: View {
    var body: some View {
        Button(action: {
            print("Hello World tapped!")
        }) {
            Text("Hello World")
                .padding()
                .background(Color.purple)
                .foregroundColor(.white)
                .font(.title)
                .border(Color.black, width: 5)
                .padding()
                .background(Color.purple)
                .foregroundColor(.white)
                .padding(10)
                .border(Color.purple, width: 5)
                .cornerRadius(10)
        }
    }
}

