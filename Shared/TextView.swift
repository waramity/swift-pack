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
                    Text("bold").fontWeight(.bold)
                    Text("light").fontWeight(.light)
                    Text("black").fontWeight(.black)
                    Text("heavy").fontWeight(.heavy)
                    Text("medium").fontWeight(.medium)
                    Text("regular").fontWeight(.regular)
                    Text("semibold").fontWeight(.semibold)
                    Text("thin").fontWeight(.thin)
                    Text("title")
                        .font(.title)
                        .fontWeight(.bold)
                }
                Group {
                    Text("rounded")
                        .font(.system(.title, design: .rounded))
                        .fontWeight(.bold)
                    Text("size")
                        .font(.system(size: 23))
                        .fontWeight(.bold)
                    Text("color")
                        .foregroundColor(.green)
                    Text("[Multipleline], so don’t waste it living someone else’s life. Don’t be trapped by dogma—which is living with the results of other people’s thinking. Don’t let the noise of others’ opinions drown out your own inner voice. And most important, have the courage to follow your heart and intuition.")
                    Text("[Center multipleline], so don’t waste it living someone else’s life. Don’t be trapped by dogma—which is living with the results of other people’s thinking. Don’t let the noise of others’ opinions drown out your own inner voice. And most important, have the courage to follow your heart and intuition.")
                        .multilineTextAlignment(.center)
                    Text("[Line limit], so don’t waste it living someone else’s life. Don’t be trapped by dogma—which is living with the results of other people’s thinking. Don’t let the noise of others’ opinions drown out your own inner voice. And most important, have the courage to follow your heart and intuition.")
                        .lineLimit(1)
                    
                    Text("[Truncation mode], so don’t waste it living someone else’s life. Don’t be trapped by dogma—which is living with the results of other people’s thinking. Don’t let the noise of others’ opinions drown out your own inner voice. And most important, have the courage to follow your heart and intuition.")
                        .lineLimit(1)
                        .truncationMode(.middle)
                    
                    Text("[Line spacing and padding], so don’t waste it living someone else’s life. Don’t be trapped by dogma—which is living with the results of other people’s thinking. Don’t let the noise of others’ opinions drown out your own inner voice. And most important, have the courage to follow your heart and intuition.")
                        .lineSpacing(10)
                        .padding()
                    
                    Text("rotation")
                        .rotationEffect(.degrees(45))
                    
                    Text("rotation anchor")
                        .rotationEffect(.degrees(20), anchor: UnitPoint(x: 1, y: 10))
                    
                }
                
                Group {
                    
                    Text("rotation 3D")
                        .rotation3DEffect(.degrees(30), axis: (x: 1, y: 0, z: 0))
                    
                    
                    Text("shadow")
                        .shadow(color: .gray, radius: 2, x: 0, y: 15)
                    
                    Text("**Markdown bold**. *Markdown italic.* You can [click this link](https://www.appcoda.com) to go to appcoda.com")
                    .font(.title)                }
            }
        }
    }
}
