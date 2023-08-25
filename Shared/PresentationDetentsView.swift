//
//  PresentationDetentsView.swift
//  swift-pack
//
//  Created by nattapol wattana on 26/8/2566 BE.
//

import SwiftUI

struct PresentationDetentsView: View {
    @State var basic = false
    @State var fix_height = false
    
    var body: some View {
        NavigationView {
            VStack {
                Button("Basic") {
                    basic = true
                }
                Button("Fix height") {
                    fix_height = true
                }
            }
            .navigationTitle("Presentation Detents")
        }.sheet(isPresented: $basic) {
            Text("Besic view")
                .presentationDetents([.medium, .large])
            
        }.sheet(isPresented: $fix_height) {
            Text("Fix height view")
                .presentationDetents([.height(250)])
        }
    }
}

