//
//  TextView.swift
//  swift-pack
//
//  Created by nattapol wattana on 23/8/2566 BE.
//

import SwiftUI

struct TextView: View {
    var body: some View {
        ScrollView {
            VStack {
                Group {
                    Text("Text")
                    Text("font title")
                        .font(.title)
                        .fontWeight(.bold)
                    Text("bold").fontWeight(.bold)
                    Text("light").fontWeight(.light)
                    Text("black").fontWeight(.black)
                    Text("heavy").fontWeight(.heavy)
                    Text("medium").fontWeight(.medium)
                    Text("regular").fontWeight(.regular)
                    Text("semibold").fontWeight(.semibold)
                    Text("thin").fontWeight(.thin)
                }
                Group {
                    
                    Text("thin").fontWeight(.thin)
                }
            }
        }
    }
}
