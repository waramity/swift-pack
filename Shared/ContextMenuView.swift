//
//  ContextMenuView.swift
//  swift-pack
//
//  Created by nattapol wattana on 25/8/2566 BE.
//

import SwiftUI

struct ContextMenuView: View {
    
    var body: some View {
        Text("[Hold this] Context Menu")
            .contextMenu {
                Button {
                    print("Change country setting")
                } label: {
                    Label("Choose Country", systemImage: "globe")
                }
                
                Button {
                    print("Enable geolocation")
                } label: {
                    Label("Detect Location", systemImage: "location.circle")
                }
            }
    }
}

