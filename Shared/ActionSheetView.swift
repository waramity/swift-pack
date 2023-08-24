//
//  ActionSheetView.swift
//  swift-pack
//
//  Created by nattapol wattana on 25/8/2566 BE.
//

import SwiftUI

struct ActionSheetView: View {
    @State private var showingOptions = false
    @State private var selection = "No color"
    
    var body: some View {
        VStack {
            Text(selection)
            
            Button("Show Color") {
                showingOptions = true
            }
            .confirmationDialog("Select a color", isPresented: $showingOptions, titleVisibility: .visible) {
                Button("Red") {
                    selection = "Red"
                }
                
                Button("Green") {
                    selection = "Green"
                }
                
                Button("Blue") {
                    selection = "Blue"
                }
            }
        }
    }
}

