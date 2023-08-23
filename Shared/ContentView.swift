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
                NavigationLink(destination:  TextView()) {
                    Text("Text")
                }
                NavigationLink(destination: ImageView()) {
                    Text("Image")
                }
                NavigationLink(destination: LayoutView()) {
                    Text("Layout")
                }
                NavigationLink(destination: CarouselView()) {
                    Text("Carousel UI")
                }
                NavigationLink(destination: ButtonView()) {
                    Text("Button")
                }
            }
            .navigationBarTitle("List View")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
