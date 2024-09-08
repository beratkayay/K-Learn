//
//  Family1.swift
//  K-Learn
//
//  Created by berat kaya on 6.03.2024.
//

import Foundation

struct CardsForDirections: Identifiable {
    let id: String
    let isCorrect: Bool
    let symbol: String
    let text: String
    let setIndex: Int
    var fontSize: CGFloat
}
/*
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

 */
struct FirstCardSetForDirections {
    let firstCards: [Cards] = [
        Cards(id: "1", isCorrect: false, symbol: "⬆️", text: "上", setIndex: 0, fontSize: 0),
        Cards(id: "2", isCorrect: true, symbol: "⬇️", text: "下", setIndex: 0, fontSize: 0),
        Cards(id: "3", isCorrect: false, symbol: "⏩", text: "前", setIndex: 0, fontSize: 0),
        Cards(id: "4", isCorrect: false, symbol: "⏪", text: "後ろ", setIndex: 0, fontSize: 0)
    ]
}

struct SecondCardSetForDirections {
    let secondCards: [CardsForDirections] = [
        CardsForDirections(id: "2", isCorrect: false, symbol: "➡️", text: "右", setIndex: 1, fontSize: 0),
        CardsForDirections(id: "3", isCorrect: false, symbol: "⬆️", text: "上", setIndex: 1, fontSize: 0),
        CardsForDirections(id: "1", isCorrect: true, symbol: "⬅️", text: "左", setIndex: 1, fontSize: 0),
        CardsForDirections(id: "4", isCorrect: false, symbol: "⬇️", text: "下", setIndex: 1, fontSize: 0)
    ]
}

struct ThirdCardSetForDirections {
    let thirdCards: [CardsForDirections] = [
        CardsForDirections(id: "1", isCorrect: true, symbol: "前", text: "", setIndex: 2, fontSize: 0),
        CardsForDirections(id: "2", isCorrect: false, symbol: "遠くの", text: "", setIndex: 2, fontSize: 0),
        CardsForDirections(id: "3", isCorrect: false, symbol: "外の", text: "", setIndex: 2, fontSize: 0),
        CardsForDirections(id: "4", isCorrect: false, symbol: "上", text: "", setIndex: 2, fontSize: 0)
    ]
}

struct FourthCardSetForDirections {
    let fourthCards: [CardsForDirections] = [
        CardsForDirections(id: "1", isCorrect: false, symbol: "中の", text: "", setIndex: 3, fontSize: 0),
        CardsForDirections(id: "2", isCorrect: false, symbol: "右", text: "", setIndex: 3, fontSize: 0),
        CardsForDirections(id: "3", isCorrect: false, symbol: "外の", text: "", setIndex: 3, fontSize: 0),
        CardsForDirections(id: "4", isCorrect: true, symbol: "近く", text: "", setIndex: 3, fontSize: 0)
    ]
}

struct FifthCardSetForDirections {
    let fifthCards: [CardsForDirections] = [
        CardsForDirections(id: "1", isCorrect: true, symbol: "隣", text: "", setIndex: 4, fontSize: 0),
        CardsForDirections(id: "2", isCorrect: false, symbol: "横の", text: "", setIndex: 4, fontSize: 0),
        CardsForDirections(id: "3", isCorrect: false, symbol: "向かい", text: "", setIndex: 4, fontSize: 0),
        CardsForDirections(id: "4", isCorrect: false, symbol: "後ろ", text: "", setIndex: 4, fontSize: 0)
    ]
}

struct SixthCardSetForDirections {
    let sixthCards: [CardsForDirections] = [
        CardsForDirections(id: "1", isCorrect: false, symbol: "後ろ", text: "", setIndex: 4, fontSize: 0),
        CardsForDirections(id: "2", isCorrect: false, symbol: "外", text: "", setIndex: 4, fontSize: 0),
        CardsForDirections(id: "3", isCorrect: false, symbol: "上の", text: "", setIndex: 4, fontSize: 0),
        CardsForDirections(id: "4", isCorrect: true, symbol: "中の", text: "", setIndex: 4, fontSize: 0)
    ]
}
