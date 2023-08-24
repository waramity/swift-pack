//
//  ProgressBarView.swift
//  swift-pack
//
//  Created by nattapol wattana on 24/8/2566 BE.
//

import SwiftUI

struct ProgressBarView: View {
    @State private var downloadAmount = 0.0
    let timer = Timer.publish(every: 0.1, on: .main, in: .common).autoconnect()
    
    var body: some View {
        ProgressView("Downloading…", value: downloadAmount, total: 100)
            .onReceive(timer) { _ in
                if downloadAmount < 100 {
                    downloadAmount += 2
            }
        }
    }
}
