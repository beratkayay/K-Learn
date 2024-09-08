//
//  Places0.swift
//  K-Learn
//
//  Created by berat kaya on 14.03.2024.
//

import Foundation

struct JapaneseFoodDrinkModel: Identifiable {
    let id = UUID()
    let character: String
    let name: String
}

struct JapaneseFoodAndDrink {
    static let foodAndDrink: [JapaneseFoodDrinkModel] = [
        JapaneseFoodDrinkModel(character: "食べ物", name: "Food"),
        JapaneseFoodDrinkModel(character: "飲み物", name: "Drink"),
        JapaneseFoodDrinkModel(character: "朝食", name: "Breakfast"),
        JapaneseFoodDrinkModel(character: "昼食", name: "Lunch"),
        JapaneseFoodDrinkModel(character: "夕食", name: "Dinner"),
        JapaneseFoodDrinkModel(character: "おやつ", name: "Snack"),
        JapaneseFoodDrinkModel(character: "コーヒー", name: "Coffee"),
        JapaneseFoodDrinkModel(character: "紅茶", name: "Tea"),
        JapaneseFoodDrinkModel(character: "水", name: "Water"),
        JapaneseFoodDrinkModel(character: "ジュース", name: "Juice"),
        JapaneseFoodDrinkModel(character: "ビール", name: "Beer"),
        JapaneseFoodDrinkModel(character: "ワイン", name: "Wine"),
        JapaneseFoodDrinkModel(character: "日本酒", name: "Sake"),
        JapaneseFoodDrinkModel(character: "焼酎", name: "Shochu"),
        JapaneseFoodDrinkModel(character: "ミルク", name: "Milk"),
        JapaneseFoodDrinkModel(character: "ソーダ", name: "Soda"),
        JapaneseFoodDrinkModel(character: "パン", name: "Bread"),
        JapaneseFoodDrinkModel(character: "ご飯", name: "Rice"),
        JapaneseFoodDrinkModel(character: "麺類", name: "Noodles"),
        JapaneseFoodDrinkModel(character: "寿司", name: "Sushi"),
        JapaneseFoodDrinkModel(character: "刺身", name: "Sashimi"),
        JapaneseFoodDrinkModel(character: "ラーメン", name: "Ramen"),
        JapaneseFoodDrinkModel(character: "カレー", name: "Curry"),
        JapaneseFoodDrinkModel(character: "サラダ", name: "Salad"),
        JapaneseFoodDrinkModel(character: "デザート", name: "Dessert"),
        JapaneseFoodDrinkModel(character: "アイスクリーム", name: "Ice cream"),
        JapaneseFoodDrinkModel(character: "チョコレート", name: "Chocolate"),
        JapaneseFoodDrinkModel(character: "フルーツ", name: "Fruit"),
        JapaneseFoodDrinkModel(character: "豆腐", name: "Tofu")
    ]
}




