//
//  DetailView.swift
//  swift-pack
//
//  Created by nattapol wattana on 23/8/2566 BE.
//

import SwiftUI

struct DetailView: View {
    let itemNumber: Int
    
    var body: some View {
        Text("Detail View for Item \(itemNumber)")
            .navigationBarTitle("Item \(itemNumber)")
    }
}
