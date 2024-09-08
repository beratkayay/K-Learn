//
//  Family2.swift
//  K-Learn
//
//  Created by berat kaya on 6.03.2024.
//

import Foundation

struct QuestionTypeforDirections {
    let questionText: String
    let correctAnswer: String
    let answerOptions: [String]


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
struct QuestionsForDirections{
    let questions = [
        QuestionTypeforDirections(questionText: "Text 'Below' in Japanese.", correctAnswer: "下の", answerOptions: ["隣", "遠くの", "下の", "中", "中の", "上の"]),
        QuestionTypeforDirections(questionText: "Text 'Next to' in Japanese.", correctAnswer: "隣", answerOptions: ["遠くの", "上の", "間", "向かい", "近くの", "隣"]),
            QuestionTypeforDirections(questionText: "Text 'Near' in Japanese.", correctAnswer: "近く", answerOptions: ["外", "上の", "前", "近く", "隣", "下"]),
            QuestionTypeforDirections(questionText: "Text 'Far' in Japanese.", correctAnswer: "遠く", answerOptions: ["下の", "横の", "遠く", "後ろ", "中", "向かい"]),
            QuestionTypeforDirections(questionText: "Text 'Inside' in Japanese.", correctAnswer: "中", answerOptions: ["外の", "下の", "前", "中", "上", "中の"]),
            QuestionTypeforDirections(questionText: "Text 'Opposite' in Japanese.", correctAnswer: "向かい", answerOptions: ["中の", "向かい", "上の", "下の", "外の", "左"]),
        QuestionTypeforDirections(questionText: "Text 'Forward' in Japanese.", correctAnswer: "前", answerOptions: ["中", "外の", "下の", "隣", "前", "遠く"]),
            QuestionTypeforDirections(questionText: "Text 'Above' in Japanese.", correctAnswer: "上の", answerOptions: ["上", "遠くの", "下", "中", "上の", "隣"]),
            QuestionTypeforDirections(questionText: "Text 'Beside' in Japanese.", correctAnswer: "横の", answerOptions: ["横の", "後ろ", "前", "外の", "下の", "間"])
    ]
}
