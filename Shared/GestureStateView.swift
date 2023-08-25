//
//  GestureStateView.swift
//  swift-pack
//
//  Created by nattapol wattana on 25/8/2566 BE.
//

import SwiftUI

struct GestureStateView: View {
    @GestureState private var longPressTap = false
    @State private var isPressed = false

    var body: some View {
        Image(systemName: "star.circle.fill")
            .font(.system(size: 200))
            .opacity(longPressTap ? 0.4 : 1.0)
            .scaleEffect(isPressed ? 0.5 : 1.0)
            .animation(.easeInOut, value: isPressed)
            .foregroundColor(.green)
            .gesture(
                LongPressGesture(minimumDuration: 1.0)
                    .updating($longPressTap, body: { (currentState, state, transaction) in
                        state = currentState
                    })
                    .onEnded({ _ in
                        self.isPressed.toggle()
                    })
            )
    }
}
