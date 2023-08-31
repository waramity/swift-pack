//
//  ImagePickerView.swift
//  swift-pack
//
//  Created by nattapol wattana on 1/9/2566 BE.
//

import SwiftUI

struct ImagePickerView: View {
    @State var isPresenting: Bool = false
    @State var uiImage: UIImage?
    
    var body: some View {
        VStack{
            HStack{
                Image(systemName: "photo")
                    .onTapGesture {
                        isPresenting = true
                    }
                
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
            ImagePicker(uiImage: $uiImage, isPresenting: $isPresenting)
        }
        .padding()
    }
}

struct ImagePickerView_Previews: PreviewProvider {
    static var previews: some View {
        ImagePickerView()
    }
}
