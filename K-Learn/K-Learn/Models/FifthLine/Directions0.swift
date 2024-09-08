//
//  Family0.swift
//  K-Learn
//
//  Created by berat kaya on 6.03.2024.
//

import Foundation

struct JapaneseDirectionsModel: Identifiable {
    let id = UUID()
    let character: String
    let name: String
}

struct JapaneseDirectionsAndLocations {
    static let directionsAndLocations: [JapaneseDirectionsModel] = [
        JapaneseDirectionsModel(character: "上", name: "Up"),
        JapaneseDirectionsModel(character: "下", name: "Down"),
        JapaneseDirectionsModel(character: "左", name: "Left"),
        JapaneseDirectionsModel(character: "右", name: "Right"),
        JapaneseDirectionsModel(character: "前", name: "Forward"),
        JapaneseDirectionsModel(character: "後ろ", name: "Backward"),
        JapaneseDirectionsModel(character: "中", name: "Inside"),
        JapaneseDirectionsModel(character: "外", name: "Outside"),
        JapaneseDirectionsModel(character: "近く", name: "Near"),
        JapaneseDirectionsModel(character: "遠く", name: "Far"),
        JapaneseDirectionsModel(character: "隣", name: "Next to"),
        JapaneseDirectionsModel(character: "間", name: "Between"),
        JapaneseDirectionsModel(character: "向かい", name: "Opposite"),
        JapaneseDirectionsModel(character: "上の", name: "Above"),
        JapaneseDirectionsModel(character: "下の", name: "Below"),
        JapaneseDirectionsModel(character: "横の", name: "Beside"),
        JapaneseDirectionsModel(character: "中の", name: "Inside"),
        JapaneseDirectionsModel(character: "外の", name: "Outside"),
        JapaneseDirectionsModel(character: "近くの", name: "Nearby"),
        JapaneseDirectionsModel(character: "遠くの", name: "Distant"),
    ]
}
