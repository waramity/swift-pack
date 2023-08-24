//
//  ModalView.swift
//  swift-pack
//
//  Created by nattapol wattana on 24/8/2566 BE.
//

import SwiftUI

struct ModalView: View {
    @State private var isModalVisible = false
    @State private var showAlert = false
    
    var body: some View {
        NavigationView {
            VStack {
                
                Button(action: {
                    self.isModalVisible.toggle()
                }) {
                    Text("Open Modal")
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                .padding()
                
                Button(action: {
                    self.showAlert.toggle()
                }) {
                    Text("Show Alert")
                        .padding()
                        .background(Color.red)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                .padding()
            }
            .navigationTitle("Modal and Alert")
        }
        .sheet(isPresented: $isModalVisible) {
            Modal(isModalVisible: self.$isModalVisible)
        }
        .alert(isPresented: $showAlert) {
            Alert(
                title: Text("Alert"),
                message: Text("This is an example alert."),
                dismissButton: .default(Text("OK"))
            )
        }
    }}

struct Modal: View {
    @Binding var isModalVisible: Bool
    
    var body: some View {
        VStack {
            Text("Modal View")
                .font(.largeTitle)
                .padding()
            
            Button(action: {
                self.isModalVisible.toggle()
            }) {
                Text("Close Modal")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .padding()
        }
    }
}

