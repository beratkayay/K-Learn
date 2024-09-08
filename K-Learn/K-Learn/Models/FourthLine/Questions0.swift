//
//  WhatDoYouDo0.swift
//  K-Learn
//
//  Created by berat kaya on 6.03.2024.
//

import Foundation

struct JapaneseQuestionWordsModel: Identifiable {
    let id = UUID()
    let character: String
    let name: String
}

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



