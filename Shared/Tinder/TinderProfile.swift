//
//  TinderProfile.swift
//  swift-pack
//
//  Created by nattapol wattana on 31/8/2566 BE.
//

import Foundation

struct TinderProfile {
    var title: String
    var image: String
}

#if DEBUG
var tinder_profiles = [ TinderProfile(title: "Clara, 23", image: "clara"),
              TinderProfile(title: "Audrey, 25", image: "audrey"),
              TinderProfile(title: "Jane, 21", image: "jane"),
              TinderProfile(title: "Chloe, 24", image: "chloe"),
              TinderProfile(title: "Emma, 26", image: "emma"),
              TinderProfile(title: "Lea, 26", image: "lea"),
              TinderProfile(title: "Kagney, 22", image: "kagney"),
              TinderProfile(title: "Lauren, 20", image: "lauren"),
              TinderProfile(title: "Lana, 28", image: "lana"),
              TinderProfile(title: "Scarlett, 31", image: "scarlett")
            ]
#endif
