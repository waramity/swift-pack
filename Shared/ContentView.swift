//
//  ContentView.swift
//  Shared
//
//  Created by nattapol wattana on 22/8/2566 BE.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        NavigationView {
            List {
                Group {
                    NavigationLink(destination:  TextView()) {
                        Text("Text")
                    }
                    NavigationLink(destination: ImageView()) {
                        Text("Image")
                    }
                    NavigationLink(destination: LayoutView()) {
                        Text("Layout")
                    }
                    NavigationLink(destination: CarouselView()) {
                        Text("Carousel UI")
                    }
                    NavigationLink(destination: ButtonView()) {
                        Text("Button")
                    }
                    NavigationLink(destination: StateView()) {
                        Text("State")
                    }
                    NavigationLink(destination: DynamicListView()) {
                        Text("Dynamic List, ForEach and Identifiable")
                    }
                    NavigationLink(destination: PathShapeView()) {
                        Text("Path Shape")
                    }
                    NavigationLink(destination: LoadingView().frame(width: 150, height: 150)) {
                        Text("Loading")
                    }
                    NavigationLink(destination: ProgressBarView()) {
                        Text("Progress bar")
                    }
                }
                Group {
                    NavigationLink(destination: ModalView()) {
                        Text("Modal and Alert")
                    }
                    NavigationLink(destination: FormView()) {
                        Text("Form")
                    }
                    NavigationLink(destination: DataSharingView()) {
                        Text("[bug] Data Sharing, Combine, Preferences, @EnvironmentObject")
                    }
                    NavigationLink(destination: RegistrationFormView()) {
                        Text("[unfinish] Registration Form")
                    }
                    NavigationLink(destination: SwipeToDeleteView()) {
                        Text("Swipe To Delete")
                    }
                    NavigationLink(destination: ContextMenuView()) {
                        Text("Context Menu")
                    }
                    NavigationLink(destination: ActionSheetView()) {
                        Text("Action Sheet")
                    }
                    NavigationLink(destination: GestureModifierView()) {
                        Text("Gesture Modifier")
                    }
                    NavigationLink(destination: LongPressGestureView()) {
                        Text("Long Press Gesture")
                    }
                    NavigationLink(destination: GestureStateView()) {
                        Text("Gesture State")
                    }
                }
            }
            .navigationBarTitle("List View")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
