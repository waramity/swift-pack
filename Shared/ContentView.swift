//
//  ContentView.swift
//  Shared
//
//  Created by nattapol wattana on 22/8/2566 BE.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                ForEach(1..<6) { index in
                    NavigationLink(destination: DetailView(itemNumber: index)) {
                        Text("Item \(index)")
                    }
                }
            }
            .navigationBarTitle("List View")
        }
        
    }
}

struct DetailView: View {
    let itemNumber: Int
    
    var body: some View {
        Text("Detail View for Item \(itemNumber)")
            .navigationBarTitle("Item \(itemNumber)")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
