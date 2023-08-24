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
                Group {
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
                    NavigationLink(destination: StateView()) {
                        Text("State")
                    }
                    NavigationLink(destination: DynamicListView()) {
                        Text("Dynamic List, ForEach and Identifiable")
                    }
                    NavigationLink(destination: PathShapeView()) {
                        Text("Path Shape")
                    }
                    NavigationLink(destination: LoadingView().frame(width: 150, height: 150)) {
                        Text("Loading")
                    }
                    NavigationLink(destination: ProgressBarView()) {
                        Text("Progress bar")
                    }
                }
                Group {
                    NavigationLink(destination: ModalView()) {
                        Text("Modal and Alert")
                    }
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
