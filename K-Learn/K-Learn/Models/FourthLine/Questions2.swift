//
//  WhatDoYoDo2.swift
//  K-Learn
//
//  Created by berat kaya on 6.03.2024.
//

import Foundation

struct QuestionTypeforQuestions {
    let questionText: String
    let correctAnswer: String
    let answerOptions: [String]
}

struct QuestionsForQuestion {
    let questions = [
        
        QuestionTypeforQuestions(questionText: "How do you say 'What' in Japanese?", correctAnswer: "何", answerOptions: ["誰", "いつ", "どこ", "なぜ", "どうして", "何"]),
        
        QuestionTypeforQuestions(questionText: "How do you say 'Who' in Japanese?", correctAnswer: "誰", answerOptions: ["何", "誰", "いつ", "どこ", "なぜ", "どうして"]),
        
        QuestionTypeforQuestions(questionText: "How do you say 'When' in Japanese?", correctAnswer: "いつ", answerOptions: ["どこ", "なぜ", "どうして", "いくら", "いくつ", "いつ"]),
        
        QuestionTypeforQuestions(questionText: "How do you say 'Where' in Japanese?", correctAnswer: "どこ", answerOptions: ["なぜ", "どこ", "どうして", "どう", "いくら", "いくつ"]),
        
        QuestionTypeforQuestions(questionText: "How do you say 'How' in Japanese?", correctAnswer: "どう", answerOptions: ["なぜ", "どうして", "どう", "どこ", "いくら", "いくつ"]),
        
        QuestionTypeforQuestions(questionText: "How do you say 'How much' in Japanese?", correctAnswer: "いくら", answerOptions: ["いずれ", "いずれ", "いくら", "どのように", "どちら", "どう"]),
        
        QuestionTypeforQuestions(questionText: "How do you say 'How many' in Japanese?", correctAnswer: "いくつ", answerOptions: ["いずれ", "いくら", "どのように", "どちら", "いくつ", "どう"]),
        
        QuestionTypeforQuestions(questionText: "How do you say 'In what way' in Japanese?", correctAnswer: "どのように", answerOptions: ["どちら", "いずれ", "いくら", "どのように", "どう", "なぜ"])
        
    ]
}
