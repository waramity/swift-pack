//
//  FormView.swift
//  swift-pack
//
//  Created by nattapol wattana on 24/8/2566 BE.
//

import SwiftUI

struct FormView: View {
    @State private var selectedOption = 0
    @State private var isToggled = false
    @State private var stepperValue = 1
    
    let options = ["Option 1", "Option 2", "Option 3"]
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Picker")) {
                    Picker("Select an option", selection: $selectedOption) {
                        ForEach(0..<options.count, id: \.self) { index in
                            Text(options[index]).tag(index)
                        }
                    }
                    .pickerStyle(SegmentedPickerStyle())
                }
                
                Section(header: Text("Toggle")) {
                    Toggle("Toggle Switch", isOn: $isToggled)
                }
                
                Section(header: Text("Stepper")) {
                    Stepper("Stepper Value: \(stepperValue)", value: $stepperValue, in: 1...10)
                }
            }
            .navigationBarTitle("Form")
        }
    }
}

