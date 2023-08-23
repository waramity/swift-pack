//
//  CarouselView.swift
//  swift-pack
//
//  Created by nattapol wattana on 23/8/2566 BE.
//

import SwiftUI

struct CarouselView: View {
    let carouselItems = ["Item 1", "Item 2", "Item 3", "Item 4", "Item 5"]

    var body: some View {
        NavigationView {
            Carousel(items: carouselItems)
                .navigationBarTitle("Carousel Example", displayMode: .inline)
        }    }
}

struct Carousel: View {
    let items: [String]

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 20) {
                ForEach(items, id: \.self) { item in
                    CarouselCardView(item: item)
                }
            }
            .padding(20)
        }
    }
}

struct CarouselCardView: View {
    let item: String

    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.blue)
                .frame(width: 200, height: 150)

            Text(item)
                .font(.title)
                .foregroundColor(.white)
        }
    }
}

