//
//  SeeFoodView.swift
//  swift-pack
//
//  Created by nattapol wattana on 31/8/2566 BE.
//

import SwiftUI

struct SeeFoodView: View {
    @State var isPresenting: Bool = false
    @State var uiImage: UIImage?
    
    var body: some View {
        VStack{
            HStack{
                Image(systemName: "photo")
                    .onTapGesture {
                        isPresenting = true
                    }
                
                Image(systemName: "camera")
            }
            .font(.largeTitle)
            .foregroundColor(.blue)
            
            Rectangle()
                .strokeBorder()
                .foregroundColor(.yellow)
                .overlay(
                    Group {
                        if uiImage != nil {
                            Image(uiImage: uiImage!)
                                .resizable()
                                .scaledToFit()
                        }
                    }
                )
            
        }
        .sheet(isPresented: $isPresenting){
            SeeFoodImagePicker(uiImage: $uiImage, isPresenting: $isPresenting)
        }
        .padding()
    }
}

struct SeeFoodView_Previews: PreviewProvider {
    static var previews: some View {
        SeeFoodView()
    }
}
