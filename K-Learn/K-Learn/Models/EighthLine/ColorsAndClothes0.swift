//
//  ColorsAndClothes.swift
//  K-Learn
//
//  Created by berat kaya on 20.04.2024.
//

import Foundation

struct JapaneseColorsClothingModel: Identifiable {
    let id = UUID()
    let character: String
    let name: String
}

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
