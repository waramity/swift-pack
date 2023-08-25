//
//  LongPressGestureView.swift
//  swift-pack
//
//  Created by nattapol wattana on 25/8/2566 BE.
//

import SwiftUI

struct LongPressGestureView: View {
    @State private var isPressed = false
    
    var body: some View {
        Image(systemName: "star.circle.fill")
            .font(.system(size: 200))
            .scaleEffect(isPressed ? 0.5 : 1.0)
            .animation(.easeInOut, value: isPressed)
            .foregroundColor(.green)
            .gesture(
                LongPressGesture(minimumDuration: 1.0)
                    .onEnded({ _ in
                        self.isPressed.toggle()
                    })
            )
    }
}
