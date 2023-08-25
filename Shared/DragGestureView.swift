//
//  DragGestureView.swift
//  swift-pack
//
//  Created by nattapol wattana on 25/8/2566 BE.
//

import SwiftUI

struct DragGestureView: View {
    @GestureState private var dragOffset = CGSize.zero
    
    var body: some View {
        Image(systemName: "star.circle.fill")
            .font(.system(size: 100))
            .offset(x: dragOffset.width, y: dragOffset.height)
            .animation(.easeInOut, value: dragOffset)
            .foregroundColor(.green)
            .gesture(
                DragGesture()
                    .updating($dragOffset, body: { (value, state, transaction) in
                        
                        state = value.translation
                    })
            )
    }
}
