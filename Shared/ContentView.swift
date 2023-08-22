//
//  ContentView.swift
//  Shared
//
//  Created by nattapol wattana on 22/8/2566 BE.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Image("test")
        NavigationView {
                  Text("ehere")
                .padding().navigationTitle("Navigation").navigationBarTitleDisplayMode(.inline)
        }
        

        NavigationLink(destination: Text("Second View")) {
            Text("Hello, World!")
        }
        .navigationTitle("Navigation")
        
        
        NavigationLink(destination: Text("Second View")) {
            Image("test")
        }
        .navigationTitle("Navigation")
    }
}

struct SecondView: View {
    var body: some View {
        NavigationView {
                  Text("sus")
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
