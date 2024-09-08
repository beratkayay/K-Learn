//
//  Places1.swift
//  K-Learn
//
//  Created by berat kaya on 14.03.2024.
//

import Foundation

struct CardsForFoods: Identifiable {
    let id: String
    let isCorrect: Bool
    let symbol: String
    let text: String
    let setIndex: Int
    var fontSize: CGFloat
}

/*
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
     ]
 }





 */
struct FirstCardSetForFoods {
    let firstCards: [Cards] = [
        Cards(id: "1", isCorrect: true, symbol: "🥘", text: "カレー", setIndex: 0, fontSize: 0),
        Cards(id: "2", isCorrect: false, symbol: "🍦", text: "アイスクリーム", setIndex: 0, fontSize: 0),
        Cards(id: "3", isCorrect: false, symbol: "🍰", text: "デザート", setIndex: 0, fontSize: 0),
        Cards(id: "4", isCorrect: false, symbol: "🍜", text: "ラーメン", setIndex: 0, fontSize: 0)
    ]
}

struct SecondCardSetForFoods {
    let secondCards: [Cards] = [
        Cards(id: "1", isCorrect: false, symbol: "🥗", text: "サラダ", setIndex: 1, fontSize: 0),
        Cards(id: "2", isCorrect: true, symbol: "🍚", text: "ご飯", setIndex: 1, fontSize: 0),
        Cards(id: "3", isCorrect: false, symbol: "🍶", text: "日本酒", setIndex: 1, fontSize: 0),
        Cards(id: "4", isCorrect: false, symbol: "🍣", text: "刺身", setIndex: 1, fontSize: 0)
    ]
}


struct ThirdCardSetForFoods {
    let thirdCards: [Cards] = [
        Cards(id: "1", isCorrect: false, symbol: "☕️", text: "コーヒー", setIndex: 2, fontSize: 0),
        Cards(id: "2", isCorrect: false, symbol: "🍦", text: "アイスクリーム", setIndex: 2, fontSize: 0),
        Cards(id: "3", isCorrect: true, symbol: "🍶", text: "日本酒", setIndex: 2, fontSize: 0),
        Cards(id: "4", isCorrect: false, symbol: "🥘", text: "カレー", setIndex: 2, fontSize: 0)
    ]
}

struct FourthCardSetForFoods {
    let fourthCards: [Cards] = [
        Cards(id: "1", isCorrect: false, symbol: "おやつ", text: "", setIndex: 3, fontSize: 0),
        Cards(id: "2", isCorrect: false, symbol: "麺類", text: "", setIndex: 3, fontSize: 0),
        Cards(id: "3", isCorrect: false, symbol: "パン", text: "", setIndex: 3, fontSize: 0),
        Cards(id: "4", isCorrect: true, symbol: "夕食", text: "", setIndex: 3, fontSize: 0)
    ]
}

struct FifthCardSetForFoods {
    let fifthCards: [Cards] = [
        Cards(id: "1", isCorrect: true, symbol: "朝食", text: "", setIndex: 4, fontSize: 0),
        Cards(id: "2", isCorrect: false, symbol: "サラダ", text: "", setIndex: 4, fontSize: 0),
        Cards(id: "3", isCorrect: false, symbol: "フルーツ", text: "", setIndex: 4, fontSize: 0),
        Cards(id: "4", isCorrect: false, symbol: "飲み物", text: "", setIndex: 4, fontSize: 0)
    ]
}

struct SixthCardSetForFoods {
    let sixthCards: [Cards] = [
        Cards(id: "1", isCorrect: false, symbol: "昼食", text: "", setIndex: 5, fontSize: 0),
        Cards(id: "2", isCorrect: true, symbol: "ソーダ", text: "", setIndex: 5, fontSize: 0),
        Cards(id: "3", isCorrect: false, symbol: "食べ物", text: "", setIndex: 5, fontSize: 0),
        Cards(id: "4", isCorrect: false, symbol: "焼酎", text: "", setIndex: 5, fontSize: 0)
    ]
}


struct SeventhCardSetForFoods {
    let seventhCards: [Cards] = [
        Cards(id: "1", isCorrect: false, symbol: "ミルク", text: "", setIndex: 6, fontSize: 0),
        Cards(id: "2", isCorrect: false, symbol: "カレー", text: "", setIndex: 6, fontSize: 0),
        Cards(id: "3", isCorrect: true, symbol: "ラーメン", text: "", setIndex: 6, fontSize: 0),
        Cards(id: "4", isCorrect: false, symbol: "ビール", text: "", setIndex: 6, fontSize: 0)
    ]
}

struct EighthCardSetForFoods {
    let eighthCards: [Cards] = [
        Cards(id: "1", isCorrect: false, symbol: "🍝", text: "麺類", setIndex: 7, fontSize: 0),
        Cards(id: "2", isCorrect: true, symbol: "🥛", text: "ミルク", setIndex: 7, fontSize: 0),
        Cards(id: "3", isCorrect: false, symbol: "🍫", text: "チョコレート", setIndex: 7, fontSize: 0),
        Cards(id: "4", isCorrect: false, symbol: "🥗", text: "サラダ", setIndex: 7, fontSize: 0)
    ]
}
