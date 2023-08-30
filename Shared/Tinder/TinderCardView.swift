//
//  TinderCardView.swift
//  swift-pack
//
//  Created by nattapol wattana on 31/8/2566 BE.
//

import SwiftUI

struct TinderCardView: View, Identifiable  {
    let title: String
    let image: String
    
    let id = UUID()
    
    var body: some View {
        Image(image)
           .resizable()
           .scaledToFill()
               .frame(minWidth: 0, maxWidth: .infinity)
           .cornerRadius(10)
               .padding(.horizontal, 15)
           .overlay(
               VStack {
                   Text(title)
                       .font(.system(.headline, design: .rounded))
                       .fontWeight(.bold)
                       .padding(.horizontal, 30)
                       .padding(.vertical, 10)
                       .background(Color.white)
                       .cornerRadius(5)
           }
           .padding([.bottom], 20)
               , alignment: .bottom)    }
}

struct TinderCardView_Previews: PreviewProvider {
    static var previews: some View {
        TinderCardView(title: "Clara, 23", image: "clara")
            .padding(.top, 50)
            .padding(.bottom, 50)    }
}
