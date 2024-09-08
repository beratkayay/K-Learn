//
//  WhatDoYouDo1.swift
//  K-Learn
//
//  Created by berat kaya on 6.03.2024.
//

import Foundation

struct QuestionTypeForQuestions {
    let id: String
    let text: String
    let correctAnswer: String
    let options: [String]
    let character: String
    let fontSize: CGFloat
}

/*
 struct JapaneseQuestionWords {
     static let basicQuestionWords: [JapaneseQuestionWordsModel] = [
         JapaneseQuestionWordsModel(character: "何", name: "What"),
         JapaneseQuestionWordsModel(character: "誰", name: "Who"),
         JapaneseQuestionWordsModel(character: "いつ", name: "When"),
         JapaneseQuestionWordsModel(character: "どこ", name: "Where"),
         JapaneseQuestionWordsModel(character: "なぜ", name: "Why"),
         JapaneseQuestionWordsModel(character: "どうして", name: "Why"),
         JapaneseQuestionWordsModel(character: "どう", name: "How"),
         JapaneseQuestionWordsModel(character: "いくら", name: "How much"),
         JapaneseQuestionWordsModel(character: "いくつ", name: "How many"),
         JapaneseQuestionWordsModel(character: "どのように", name: "In what way"),
         JapaneseQuestionWordsModel(character: "どちら", name: "Which"),
         JapaneseQuestionWordsModel(character: "いずれ", name: "Which"),
     ]
 }

 */

let questionsForQuestions = [
    QuestionTypeForQuestions(id: "1", text: "What does that expression mean?", correctAnswer: "How many", options: ["How many", "How much", "Which"], character: "いくつ", fontSize: 20),
    
    QuestionTypeForQuestions(id: "2", text: "What does these expressions mean?", correctAnswer: "Why", options: ["When", "In what way", "Why"], character: "どうして / なぜ", fontSize: 30),
    
    QuestionTypeForQuestions(id: "3", text: "What does this expression mean?", correctAnswer: "Who", options: ["What", "When", "Who"], character: "誰", fontSize: 30),
    
    QuestionTypeForQuestions(id: "4", text: "What does that expression mean?", correctAnswer: "Where", options: ["How", "Where", "Which"], character: "どこ", fontSize: 25),
    
    QuestionTypeForQuestions(id: "5", text: "What does that expression mean?", correctAnswer: "How", options: ["When", "How", "Which"], character: "どう", fontSize: 25),
    
    QuestionTypeForQuestions(id: "6", text: "What does that expression mean?", correctAnswer: "In what way", options: ["How many", "How", "In what way"], character: "どのように", fontSize: 25),
    
    QuestionTypeForQuestions(id: "7", text: "What does that expression mean?", correctAnswer: "Which", options: ["Which", "How many", "How much"], character: "どちら  /  いずれ", fontSize: 25),
    
    QuestionTypeForQuestions(id: "8", text: "What does that expression mean?", correctAnswer: "How much", options: ["Which", "How many", "How much"], character: "いくら", fontSize: 25),
    
    QuestionTypeForQuestions(id: "9", text: "What does that expression mean?", correctAnswer: "How many", options: ["How many", "How much", "Which"], character: "いくつ", fontSize: 25),
]

