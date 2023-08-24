//
//  DataSharingView.swift
//  swift-pack
//
//  Created by nattapol wattana on 24/8/2566 BE.
//

import SwiftUI

enum CuisineType: String, CaseIterable {
    case italian = "Italian"
    case mexican = "Mexican"
    case japanese = "Japanese"
}

struct Restaurant: Identifiable {
    let id = UUID()
    let name: String
    let cuisine: CuisineType
}

class UserPreferences: ObservableObject {
    @Published var selectedCuisine: CuisineType = .italian
}

class RestaurantViewModel: ObservableObject {
    @Published var restaurants: [Restaurant] = []

    init() {
        // Initially, populate the restaurant list with some data
        restaurants = [
            Restaurant(name: "Ristorante Italiano", cuisine: .italian),
            Restaurant(name: "Mexican Grill", cuisine: .mexican),
            Restaurant(name: "Sushi Express", cuisine: .japanese),
            // Add more restaurants as needed
        ]
    }

    // Step 5: Create a method to filter restaurants based on user preference
    func filterRestaurantsByPreference(_ preference: CuisineType) {
        restaurants = restaurants.filter { $0.cuisine == preference }
    }
}

struct SettingsView: View {
    @EnvironmentObject var userPreferences: UserPreferences
    @ObservedObject var restaurantViewModel = RestaurantViewModel()

    var body: some View {
        Form {
            Section(header: Text("Select Cuisine Preference")) {
                Picker("Cuisine", selection: $userPreferences.selectedCuisine) {
                    ForEach(CuisineType.allCases, id: \.self) { cuisine in
                        Text(cuisine.rawValue)
                    }
                }
            }
        }
        .onAppear {
            // Step 10: Update restaurant list when the view appears
            restaurantViewModel.filterRestaurantsByPreference(userPreferences.selectedCuisine)
        }
    }
}


struct DataSharing: View {
    @EnvironmentObject var userPreferences: UserPreferences
    @ObservedObject var restaurantViewModel = RestaurantViewModel()

    var body: some View {
        NavigationView {
            VStack {
                // Step 7: Create a settings view to select cuisine preference
                SettingsView().environmentObject(userPreferences)

                // Step 8: Display the filtered restaurant list
                List(restaurantViewModel.restaurants) { restaurant in
                    Text(restaurant.name)
                }
            }
            .navigationBarTitle("Data Sharing")
        }
    }
}

struct DataSharingView: View {
    
    @StateObject var userPreferences = UserPreferences()
    
    var body: some View {
        DataSharing().environmentObject(userPreferences)
    }
}
