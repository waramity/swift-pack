//
//  TinderBottomBarMenu.swift
//  swift-pack
//
//  Created by nattapol wattana on 31/8/2566 BE.
//

import SwiftUI

struct TinderBottomBarMenu: View {
    var body: some View {
        HStack {
            Image(systemName: "xmark")
                .font(.system(size: 40))
                .foregroundColor(.red)
            
            Button(action: {
                // Send a charm
            }) {
                Text("SEND A CHARM")
                    .font(.system(.headline, design: .rounded))
                    .bold()
                    .foregroundColor(.black)
                    .padding(.horizontal, 35)
                    .padding(.vertical, 15)
                    .background(Color.white)
                    .cornerRadius(10)
                    .overlay(
                        RoundedRectangle(cornerRadius: 30)
                            .stroke(Color.black, lineWidth: 2)
                    )
            }
            .padding(.horizontal, 20)
            
            Image(systemName: "heart.fill")
                .font(.system(size: 40))
                .foregroundColor(.green)
        }    }
}

struct TinderBottomBarMenu_Previews: PreviewProvider {
    static var previews: some View {
        TinderBottomBarMenu()
    }
}
