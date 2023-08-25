//
//  PresentationDetentsView.swift
//  swift-pack
//
//  Created by nattapol wattana on 26/8/2566 BE.
//

import SwiftUI

struct CustomDetent: CustomPresentationDetent {
    // 1
    static func height(in context: Context) -> CGFloat? {
        // 2
        return max(50, context.maxDetentValue * 0.1)
    }
}

struct PresentationDetentsView: View {
    @State var basic = false
    @State var fix_height = false
    @State var fraction = false
    @State var custom_detent = false
    
    @State var selection = false
    @State var hide_drag = false
    
    @State var selectedDetent: PresentationDetent = .medium
    
    private let availableDetents: [PresentationDetent] = [.medium, .large]
    
    var body: some View {
        NavigationView {
            VStack {
                Button("Basic") {
                    basic = true
                }
                Button("Hide drag") {
                    hide_drag = true
                }
                Button("Fix height") {
                    fix_height = true
                }
                Button("Fraction") {
                    fraction = true
                }
                Button("Custom Detent") {
                    custom_detent = true
                }
                Button("Selection") {
                    selection = true
                }
            }
            .navigationTitle("Presentation Detents")
        }.sheet(isPresented: $basic) {
            Text("Besic view")
                .presentationDetents([.medium, .large])
        }.sheet(isPresented: $hide_drag) {
            Text("Hide drag view")
                .presentationDetents([.medium, .large])
                .presentationDragIndicator(.hidden)
        }.sheet(isPresented: $fix_height) {
            Text("Fix height view")
                .presentationDetents([.height(250)])
        }.sheet(isPresented: $fraction) {
            Text("Fraction view")
                .presentationDetents([.fraction(0.1)])
        }.sheet(isPresented: $custom_detent) {
            Text("Custom detent view")
                .presentationDetents([.custom(CustomDetent.self)])
        }.sheet(isPresented: $selection) {
            // 3
            Picker("Selected Detent", selection: $selectedDetent) {
                
                ForEach(availableDetents, id: \.self) {
                    Text($0.description.capitalized)
                }
            }
            .pickerStyle(.segmented)
            .padding()
            // 2
            .presentationDetents([.medium, .large], selection: $selectedDetent)
            
            .presentationDragIndicator(.hidden)
        }
        
    }
}

extension PresentationDetent: CustomStringConvertible {
    public var description: String {
        switch self {
        case .medium:
            return "Medium"
        case .large:
            return "Large"
        default:
            return "n/a"
        }
    }
}

