//
//  ColorsAndClothes1.swift
//  K-Learn
//
//  Created by berat kaya on 20.04.2024.
//

import Foundation

struct QuestionTypeForColorsAndClothes {
    let id: String
    let text: String
    let correctAnswer: String
    let options: [String]
    let character: String
    let fontSize: CGFloat
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

 */

let questionsForColorsAndClothes : [QuestionTypeForColorsAndClothes] =
[
    QuestionTypeForColorsAndClothes(id: "1", text: "What does that word mean?", correctAnswer: "Jacket", options: ["Jacket", "Pants", "Sunglasses"], character: "ジャケット", fontSize: 20),
    
    QuestionTypeForColorsAndClothes(id: "2", text: "How do you say the following word in Japanese?", correctAnswer: "シャツ", options: ["手袋", "ベルト", "シャツ"], character: "shirt", fontSize: 30),
    
    QuestionTypeForColorsAndClothes(id: "3", text: "What color is '赤' in English?", correctAnswer: "Red", options: ["Blue", "Yellow", "Red"], character: "赤", fontSize: 25),
    
    QuestionTypeForColorsAndClothes(id: "4", text: "What is '靴' in English?", correctAnswer: "Shoes", options: ["Pants", "Shoes", "Hat"], character: "靴", fontSize: 22),
    
    QuestionTypeForColorsAndClothes(id: "5", text: "How do you say 'Yellow' in Japanese?", correctAnswer: "黄色", options: ["赤", "青", "黄色"], character: "黄色", fontSize: 18),
    
    QuestionTypeForColorsAndClothes(id: "6", text: "What is the Japanese word for 'hat'?", correctAnswer: "帽子", options: ["ワンピース", "手袋", "帽子"], character: "帽子", fontSize: 24),
    
    QuestionTypeForColorsAndClothes(id: "7", text: "Which color is '白'?", correctAnswer: "White", options: ["Green", "Black", "White"], character: "白", fontSize: 26),
    
    QuestionTypeForColorsAndClothes(id: "8", text: "What do you call 'ネクタイ' in English?", correctAnswer: "Tie", options: ["Socks", "Scarf", "Tie"], character: "ネクタイ", fontSize: 21)
    
]

