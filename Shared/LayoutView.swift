//
//  SwiftUIView.swift
//  swift-pack
//
//  Created by nattapol wattana on 23/8/2566 BE.
//

import SwiftUI

struct LayoutView: View {
    var body: some View {
        VStack {
            Text("Welcome to SwiftUI Stacks")
                .font(.largeTitle)
                .padding()
            
            HStack {
                Button(action: {
                    // Action for the left button
                    print("Left button tapped")
                }) {
                    Text("Left Button")
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                
                Button(action: {
                    // Action for the right button
                    print("Right button tapped")
                }) {
                    Text("Right Button")
                        .padding()
                        .background(Color.green)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
            }
            .padding()
        }
    }
}

