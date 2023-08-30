//
//  TinderTopBarMenu.swift
//  swift-pack
//
//  Created by nattapol wattana on 31/8/2566 BE.
//

import SwiftUI

struct TinderTopBarMenu: View {
    var body: some View {
        HStack {
             Image(systemName: "line.horizontal.3")
                 .font(.system(size: 30))
             Spacer()
             Image(systemName: "flame.fill")
                 .font(.system(size: 40))
                 .foregroundColor(.red)
             Spacer()
             Image(systemName: "bubble.left.and.bubble.right")
                 .font(.system(size: 30))
         }
         .padding()
        
    }
}

struct TinderTopBarMenu_Previews: PreviewProvider {
    static var previews: some View {
        TinderTopBarMenu()
    }
}
