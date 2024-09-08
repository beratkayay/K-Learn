//
//  Places2.swift
//  K-Learn
//
//  Created by berat kaya on 14.03.2024.
//

import Foundation

struct QuestionTypeforFoods {
    let questionText: String
    let correctAnswer: String
    let answerOptions: [String]


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
         JapaneseFoodDrinkModel(character: "豆腐", name: "Tofu")
     ]
 }

 */

struct QuestionsForFoods{
    let questions = [
        
        QuestionTypeforFoods(questionText: "Text 'Ramen' in Japanese.", correctAnswer: "ラーメン", answerOptions: ["コーヒー", "ジュース", "豆腐", "ご飯", "サラダ", "ラーメン"]),
        
        QuestionTypeforFoods(questionText:
        """
        A: What should we eat for lunch?
        B: Maybe we can eat some ...
        How would you respond to this question in Japanese.
        """
                 , correctAnswer: "サラダ", answerOptions: ["サラダ", "ソーダ", "ワイン", "コーヒー", "水", "紅茶"]),
        
        QuestionTypeforFoods(questionText: "What is sushi in Japanese?", correctAnswer: "寿司", answerOptions: ["サラダ", "麺類", "刺身", "ラーメン", "寿司", "カレー"]),
        QuestionTypeforFoods(questionText: "What is tofu in Japanese?", correctAnswer: "豆腐", answerOptions: ["アイスクリーム", "フルーツ", "豆腐", "デザート", "水", "パン"]),
        QuestionTypeforFoods(questionText: "How do you say 'tea' in Japanese?", correctAnswer: "紅茶", answerOptions: ["コーヒー", "ジュース", "水", "紅茶", "ソーダ", "ミルク"]),
        QuestionTypeforFoods(questionText: "What is the Japanese word for 'dinner'?", correctAnswer: "夕食", answerOptions: ["朝食", "昼食", "夕食", "おやつ", "デザート", "カレー"]),
        QuestionTypeforFoods(questionText: "Which Japanese dish consists of thinly sliced raw fish?", correctAnswer: "刺身", answerOptions: ["寿司", "ラーメン", "刺身", "麺類", "カレー", "サラダ"])
        
    ]
}
