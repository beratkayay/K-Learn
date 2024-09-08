//
//  ColorsAndClothes2.swift
//  K-Learn
//
//  Created by berat kaya on 20.04.2024.
//

import Foundation

struct CardsForColorsAndClothes: Identifiable {
    let id: String
    let isCorrect: Bool
    let symbol: String
    let text: String
    let setIndex: Int
    var fontSize: CGFloat
}

/*
 struct JapaneseColorsAndClothing {
     static let colorsAndClothing: [JapaneseColorsClothingModel] = [
         JapaneseColorsClothingModel(character: "赤", name: "Red"),
         JapaneseColorsClothingModel(character: "青", name: "Blue"),
         JapaneseColorsClothingModel(character: "黄色", name: "Yellow"),
         JapaneseColorsClothingModel(character: "緑", name: "Green"),
         JapaneseColorsClothingModel(character: "オレンジ", name: "Orange"),
         JapaneseColorsClothingModel(character: "紫", name: "Purple"),
         JapaneseColorsClothingModel(character: "ピンク", name: "Pink"),
         JapaneseColorsClothingModel(character: "茶色", name: "Brown"),
         JapaneseColorsClothingModel(character: "黒", name: "Black"),
         JapaneseColorsClothingModel(character: "白", name: "White"),
         JapaneseColorsClothingModel(character: "灰色", name: "Gray"),
         JapaneseColorsClothingModel(character: "靴", name: "Shoes"),
         JapaneseColorsClothingModel(character: "シャツ", name: "Shirt"),
         JapaneseColorsClothingModel(character: "ズボン", name: "Pants"),
         JapaneseColorsClothingModel(character: "ジャケット", name: "Jacket"),
         JapaneseColorsClothingModel(character: "帽子", name: "Hat"),
         JapaneseColorsClothingModel(character: "ネクタイ", name: "Tie"),
         JapaneseColorsClothingModel(character: "ワンピース", name: "Dress"),
         JapaneseColorsClothingModel(character: "スカート", name: "Skirt"),
         JapaneseColorsClothingModel(character: "靴下", name: "Socks"),
         JapaneseColorsClothingModel(character: "手袋", name: "Gloves"),
         JapaneseColorsClothingModel(character: "ショーツ", name: "Shorts"),
         JapaneseColorsClothingModel(character: "スカーフ", name: "Scarf"),
         JapaneseColorsClothingModel(character: "コート", name: "Coat"),
         JapaneseColorsClothingModel(character: "ベルト", name: "Belt"),
         JapaneseColorsClothingModel(character: "タイツ", name: "Tights"),
         JapaneseColorsClothingModel(character: "ブラウス", name: "Blouse"),
         JapaneseColorsClothingModel(character: "サングラス", name: "Sunglasses"),
     ]
 }

 }





 */
struct FirstCardSetForColorsAndClothes {
    let firstCards: [Cards] = [
        Cards(id: "1", isCorrect: true, symbol: "🩳", text: "ショーツ", setIndex: 0, fontSize: 0),
        Cards(id: "2", isCorrect: false, symbol: "🧦", text: "靴下", setIndex: 0, fontSize: 0),
        Cards(id: "3", isCorrect: false, symbol: "🧣", text: "スカーフ", setIndex: 0, fontSize: 0),
        Cards(id: "4", isCorrect: false, symbol: "👞", text: "靴", setIndex: 0, fontSize: 0)
    ]
}

struct SecondCardSetForColorsAndClothes {
    let secondCards: [Cards] = [
        Cards(id: "1", isCorrect: false, symbol: "🧢", text: "帽子", setIndex: 1, fontSize: 0),
        Cards(id: "2", isCorrect: true, symbol: "🧥", text: "コート", setIndex: 1, fontSize: 0),
        Cards(id: "3", isCorrect: false, symbol: "🕶️", text: "サングラス", setIndex: 1, fontSize: 0),
        Cards(id: "4", isCorrect: false, symbol: "👕", text: "シャツ", setIndex: 1, fontSize: 0)
    ]
}


struct ThirdCardSetForColorsAndClothes {
    let thirdCards: [Cards] = [
        Cards(id: "1", isCorrect: false, symbol: "ブラウス", text: "", setIndex: 2, fontSize: 0),
        Cards(id: "2", isCorrect: false, symbol: "帽子", text: "", setIndex: 2, fontSize: 0),
        Cards(id: "3", isCorrect: true, symbol: "タイツ", text: "", setIndex: 2, fontSize: 0),
        Cards(id: "4", isCorrect: false, symbol: "ネクタイ", text: "", setIndex: 2, fontSize: 0)
    ]
}

struct FourthCardSetForColorsAndClothes {
    let fourthCards: [Cards] = [
        Cards(id: "1", isCorrect: false, symbol: "ピンク", text: "", setIndex: 3, fontSize: 0),
        Cards(id: "2", isCorrect: false, symbol: "ズボン", text: "", setIndex: 3, fontSize: 0),
        Cards(id: "3", isCorrect: false, symbol: "黄色", text: "", setIndex: 3, fontSize: 0),
        Cards(id: "4", isCorrect: true, symbol: "青", text: "", setIndex: 3, fontSize: 0)
    ]
}

struct FifthCardSetForColorsAndClothes {
    let fifthCards: [Cards] = [
        Cards(id: "1", isCorrect: true, symbol: "🧦", text: "靴下", setIndex: 4, fontSize: 0),
        Cards(id: "2", isCorrect: false, symbol: "🧢", text: "帽子", setIndex: 4, fontSize: 0),
        Cards(id: "3", isCorrect: false, symbol: "🧤", text: "手袋", setIndex: 4, fontSize: 0),
        Cards(id: "4", isCorrect: false, symbol: "👗", text: "ワンピース", setIndex: 4, fontSize: 0)
    ]
}

struct SixthCardSetForColorsAndClothes {
    let sixthCards: [Cards] = [
        Cards(id: "1", isCorrect: false, symbol: "👖", text: "ズボン", setIndex: 5, fontSize: 0),
        Cards(id: "2", isCorrect: true, symbol: "👚", text: "ブラウス", setIndex: 5, fontSize: 0),
        Cards(id: "3", isCorrect: false, symbol: "🧣", text: "スカーフ", setIndex: 5, fontSize: 0),
        Cards(id: "4", isCorrect: false, symbol: "👟", text: "靴", setIndex: 5, fontSize: 0)
    ]
}
