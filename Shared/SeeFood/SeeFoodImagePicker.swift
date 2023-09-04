//
//  SeeFoodImagePicker.swift
//  swift-pack
//
//  Created by nattapol wattana on 31/8/2566 BE.
//

import SwiftUI
import UIKit

struct SeeFoodImagePicker: UIViewControllerRepresentable {
    
    @Binding var uiImage: UIImage?
    @Binding var isPresenting: Bool
    @Binding var sourceType: UIImagePickerController.SourceType
    
    func makeUIViewController(context: Context) -> UIImagePickerController {
        let imagePicker = UIImagePickerController()
        imagePicker.sourceType = sourceType
        imagePicker.delegate = context.coordinator
        return imagePicker
    }
    
    
    func updateUIViewController(_ uiViewController: UIImagePickerController, context: Context) {
    }
    
    typealias UIViewControllerType = UIImagePickerController
    
    
    func makeCoordinator() -> Coordinator {
        
        Coordinator(self)
        
    }
    
    class Coordinator: NSObject, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
        
        
        
        let parent: SeeFoodImagePicker
        
        
        
        func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
            
            parent.uiImage = info[.originalImage] as? UIImage
            
            parent.isPresenting = false
            
        }
        
        
        
        func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
            
            parent.isPresenting = false
            
        }
        
        
        
        init(_ imagePicker: SeeFoodImagePicker) {
            
            self.parent = imagePicker
            
        }
        
        
        
    }
    
}

