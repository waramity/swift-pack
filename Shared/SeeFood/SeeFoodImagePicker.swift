//
//  SeeFoodImagePicker.swift
//  swift-pack
//
//  Created by nattapol wattana on 31/8/2566 BE.
//

import SwiftUI
import UIKit

struct SeeFoodImagePicker: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> UIImagePickerController {
      let imagePicker = UIImagePickerController()
      imagePicker.sourceType = .photoLibrary
      return imagePicker
    }

     
    func updateUIViewController(_ uiViewController: UIImagePickerController, context: Context) {
    }
     
    typealias UIViewControllerType = UIImagePickerController
}

