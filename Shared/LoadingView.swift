//
//  LoadingView.swift
//  swift-pack
//
//  Created by nattapol wattana on 24/8/2566 BE.
//

import SwiftUI

struct LoadingView: View {
    @State private var isLoading = false
    
    var body: some View {
        VStack {
            if isLoading {
                Text("Loading...")
                    .font(.headline)
                ProgressView()
                    .progressViewStyle(CircularProgressViewStyle(tint: .blue))
            } else {
                Text("Content Loaded!")
                    .font(.headline)
            }
        }
        .onAppear {
            startLoading()
        }
        .onDisappear {
            stopLoading()
        }
        .rotationEffect(.degrees(isLoading ? 360 : 0))
        .onAppear {
            withAnimation(Animation.linear(duration: 1.0).repeatForever(autoreverses: false)) {
                isLoading = true
            }
        }
    }
    
    private func startLoading() {
        isLoading = true
    }
    
    private func stopLoading() {
        isLoading = false
    }
}
